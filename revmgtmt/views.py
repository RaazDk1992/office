from django.shortcuts import render
from django.db.models import Sum
from django.db.models import Q,F



from django.urls import reverse
from urllib.parse import urlencode
from django.shortcuts import get_object_or_404
from django.http import Http404
from django.contrib import messages
from django.template import RequestContext

# Create your views here.
from django.shortcuts import render,redirect
from django.contrib.auth.models import User,auth 
from django.contrib.auth import authenticate,login
from django.db.models import Count
from .forms import FYform,ServiceMetaForm,ServiceForm,OfficeForm,rasidAllocationForm, UserManagementForm,PaymentMethodForm,SetupGuideForm,GuideForm
from .models import ServiceMeta,Service,Office,RasidAllocation, SetupGuide,relmap,FY,Bill,PaymentMethod,Cancelled,Estimated,Profile
# Create your views here.

def revhome(request):
     if request.user.is_authenticated:
        if request.user.is_superuser:
                return render(request,'revenue\\admindashbaord.html')
        else:
             try:
                services = Service.objects.all()
                fy = FY.objects.filter(isactive=True)
                office =   get_object_or_404(Office, relmap__uRef = request.user.id)#Office.objects.get(relmap__uRef = request.user.id)
                rasid = RasidAllocation.objects.get(officeRef = office.id)
                payments = PaymentMethod.objects.all()
                d = {}
                if request.POST: 
                    return redirect('revhome')
                else:
                 gt = Bill.objects.values('org_ref').annotate(total = Sum('totalAmount'))
                 summary = Bill.objects.filter(org_ref= office.id).filter(fyRef__id=fy[0].id).filter(isActive=True).values('id','billNoNp','transactionDateNp','clientName','address','contact','serviceRef__serviceName','totalAmountNp','user__first_name')
                 d['gt'] = gt
                 d['details'] = summary 
                return render(request,'revenue\\document.html',{'office':office.id,'fy':fy,'services':services,'office':office,'rasid':rasid,'payments':payments,'d':d})
             except Exception as e:
                messages.error(request, 'Make your you are assigned an Office, ')
                messages.error(request, 'Or,Your account setting has not been completed yet. ')
                raise Http404(e)
     else :
          return redirect('validate')

def addPayment(request):
    form  = PaymentMethodForm()
    if request.POST:
        form = PaymentMethodForm(request.POST)
        if form.is_valid():
            form.save()
    return render(request,'revenue\\paymentmethod.html',{'p':form})
def addServiceMeta(request):
    form = ServiceMetaForm()
    if request.POST:
        form = ServiceMetaForm(request.POST)
        if form.is_valid():
            form.save()
              
    return render(request,'revenue\\servicemeta.html',{'meta_form':form})

def addService(request):
    if request.user.is_authenticated:
        qset = ServiceMeta.objects.values_list('id','servicecategory')
        servicelist = Service.objects.all().values('id','meta_ref__ref_no','meta_ref__servicecategory','serviceSub_ref','serviceName','serviceCharge','serviceChargeNp','isActive')
        optionlist = [(x.get('id'), x.get('servicecategory')) for x in qset.values()]
        form = ServiceForm()
        if request.POST:
            form = ServiceForm(request.POST)
            if form.is_valid():
                form.save()
                
        
        return render(request,'revenue\\newservice.html',{'service_form':form,'s':servicelist})
    else :
        return redirect('validate')

def editService(request):
    
    if request.user.is_authenticated:
        base_url = reverse('service')
        new_ref = request.POST['service_subref_id']
        new_service      = request.POST['service_name']
        new_charge = request.POST['service_charge']
        new_charge_np = request.POST['service_chargenp']
        service_ref = request.POST['ref']

        x = Service.objects.filter(id=service_ref).update(serviceName=new_service,serviceCharge=new_charge,serviceChargeNp=new_charge_np,serviceSub_ref=new_ref)
        if x>0:
            query_string =  urlencode({'status': 'success'})  
        else:
            query_string = urlencode({'status':'failed'})
        url = '{}?{}'.format(base_url, query_string)
        return redirect(url)
    else:
        return redirect('validate')



def toggleService(request):
    if request.user.is_authenticated:
        base_url = reverse('service')
        service_ref = request.POST['ref']
        s = Service.objects.get(pk = service_ref)
        s.isActive = not s.isActive
        s.save()
        query_string =  urlencode({'status': 'success'})  
        url = '{}?{}'.format(base_url, query_string)
        return redirect(url)
    else:
        return redirect('validate')
        
def rasidAllocation(request):
    rasidform = rasidAllocationForm()
    d= RasidAllocation.objects.select_related('officeRef').values('id','fyRef__fy_np','officeRef__officeName','lowerRasid','upperRasid','currentRasid').filter(isActive=True)
    e= RasidAllocation.objects.select_related('officeRef').values('id','fyRef__fy_np','officeRef__officeName','lowerRasid','upperRasid','currentRasid').filter(isActive=False)
    if request.POST:
        form = rasidAllocationForm(request.POST)
        if form.is_valid():
            form.save()
    return render(request,'revenue\\rasidallocation.html',{'rform':rasidform, 'd':d,'e':e})

def rasidManagement(request):
    rid = request.POST['rasid_id']
    r = RasidAllocation.objects.get(pk = rid)
    r.isActive = not r.isActive
    r.save()
    base_url = reverse('rasidallocation')  
    query_string =  urlencode({'status': 'success'})  
    url = '{}?{}'.format(base_url, query_string)
    return redirect(url)


def assign(request):
    assF = UserManagementForm()
    #print(assignForm)
    d = relmap.objects.select_related('offRef','uRef').values('uRef__first_name','offRef__officeName')
    inactive = User.objects.filter(is_active = False)
    print(inactive)
    
    if request.POST:
        form = UserManagementForm(request.POST)
        
        if form.is_valid():
            form.save()
    return render(request,'revenue\\usermanagement.html',{'uform':assF, 'd':d, 'inactive':inactive})


def addOffice(request):
    off = OfficeForm()
    officelist = Office.objects.filter(is_active = True)
    
    if request.POST:
        form = OfficeForm(request.POST)
        if form.is_valid():
            form.save()
    return render(request,'revenue\\office.html',{'xform':off, 'list':officelist})

def acceptReject(request):
    if request.user.is_authenticated:
        if request.method == 'POST':
           task = request.POST['task']
           uref = request.POST['ref']
           if task == 'approve':
               u = Profile.objects.filter(user__id = uref).update(is_active = True)
               User.objects.filter(pk = uref).update(is_active = True)
               return redirect('assign')
           else:
               u = Profile.objects.filter(user__id = uref).update(is_active = False, manual_disable = True)
               User.objects.filter(pk = uref).update(is_active = False)
               return redirect('assign')

    else:
        return redirect('validate')

def verification(request):
    if request.method == 'GET':
        return render(request,'revenue\\index.html')
    if request.method == 'POST':
        userName = request.POST['userName']
        passWord = request.POST['passWord']
        user = authenticate(request, username=userName, password=passWord)
        if user is not None:
            login(request,user)
           # 
            return redirect('revhome')
        else:
            return redirect('validate')

def register(request):
 if request.method == 'POST':
    firstName = request.POST['firstName']
    lastName = request.POST['lastName']
    userName = request.POST['userName']
    passWordx = request.POST['passWordx']
    passwordy = request.POST['passWordy']
    user = User.objects.create_user(username = userName, password = passWordx, first_name = firstName, last_name = lastName, is_active = False)
    user.profile.sanketNo = request.POST['sanket']
    user.profile.contactNo = request.POST['contact']
    user.profile.desc = request.POST['desc']
    user.profile.is_active = False
    user.save()

    return render(request,'revenue\\document.html')

def logout(request):
    auth.logout(request)
    return redirect('validate')

def addFy(request):
   if request.user.is_authenticated:
       form = FYform()
       d = FY.objects.all().order_by('-id')
       if request.POST:
           fyform = FYform(request.POST)
           if fyform.is_valid():
               fyform.save()
       return render(request,'revenue\\fymeta.html',{'addfy_form':form,'d':d})
   else:
        return redirect('validate')

def disableFy(request):
    if request.user.is_authenticated:
        try:
            fy = request.POST['fy_ref']
            x = FY.objects.filter(id=fy).update(isactive=False)
            if x >0 :
                query_string = urlencode({'status':'success'})
            else:
                query_string = urlencode({'status':'failed'})
        except Exception as e:
            query_string = urlencode({'status':'error','message':e})
        base_url = reverse('addfy') 
        url = '{}?{}'.format(base_url, query_string)
        return redirect(url)    
    else:
        return redirect('validate')


    

def search(request):
     if request.user.is_authenticated:
        
         return render(request,'revenue\\document.html')
     else :
          return redirect('validate')

def report(request):
    if request.user.is_authenticated:

        report = {}
        data = []
        details = []

        offices = Office.objects.all()
            
        for o  in offices:
          report = dict()
          report['office']  = o.officeName
          report['address'] = o.officeAddress
          gt= Office.objects.filter(pk = o.id, bill__isActive = True,bill__complete = True,bill__fyRef__isactive = True).values('bill__org_ref').annotate(total=Sum('bill__totalAmount'), fy = F('bill__fyRef__fy_np') ).values('total','fy').first()
          
          if gt != None:
              report['grandtotal'] = gt['total']
              report['fy'] = gt['fy']
          else:
              report['fy'] = '-'
              report['grandtotal'] = 0
          dt = Service.objects.filter(bill__org_ref=o.id,bill__isActive = True,bill__complete = True,bill__fyRef__isactive = True).values('bill__org_ref','bill__serviceRef').annotate(total = Sum('bill__totalAmount'), x = F('bill__serviceRef__serviceName'), y = F('bill__serviceRef'),z =F('bill__meta_ref')).values('x','y','z','total')
         # d = Service.objects.annotate(v = FilteredRelation('billtmp',condition=Q(billtmp__org_ref = 1))).values('serviceName','v','billtmp__org_ref')
          report['details'] = list(dt)
          data.append(report)
        return render(request,'revenue\\report.html',{'report':data})
    else:
         return redirect('validate')


def tokenSearch(request):
    if request.user.is_authenticated:
        tok = request.GET['token_s']
        d = Bill.objects.filter(token=tok).values('id').first()
        base_url = reverse('printbill')  
        if d != None:
             query_string =  urlencode({'id': d['id'],'ref':'online'})  
        else :
             query_string =  urlencode({'id': -404,'ref':'NA'})  
        url = '{}?{}'.format(base_url, query_string)
        return redirect(url)
    else:
        return redirect('validate')
def accountSettings(request):
    pass
def estimate(request):
    if request.user.is_authenticated:
      # m = ServiceMeta.objects.annotate(instances = FilteredRelation('service',condition=Q(service__isActive=True))).values('id','ref_no','servicecategory','service__serviceSub_ref','service__serviceName')
       meta = ServiceMeta.objects.all()
       
       all = []
       data = {}
       for m in meta:
           data = dict()
           data['title'] = m.servicecategory
           data['id'] = m.id
           data['ref'] = m.ref_no
           services = Service.objects.filter(meta_ref = m.id)
           data['services'] = list(services)
           all.append(data)

       if request.POST:
           meta = ServiceMeta.objects.all()
           fy = FY.objects.filter(isactive=True).first()
           for m in meta:
               service  = Service.objects.filter(meta_ref= m)
              
               for s in service:
                   estimated = Estimated()
                   mtotal = request.POST[str(m.id)]
                   stotal = request.POST[str(m.id)+'_'+str(s.id)]
                   estimated.fyref  =fy
                   estimated.meta_ref = m
                   estimated.service_ref = s
                   estimated.metawise = mtotal
                   estimated.servicewise = stotal
                   estimated.save()   
           base_url = reverse('estimate')  # 1 /products/
           query_string =  urlencode({'status':'success'})  # 2 category=42
           url = '{}?{}'.format(base_url, query_string)
           return redirect(url)
       return render(request,'revenue\\estimate.html',{'fields':all})
    else:
        return redirect('validate')
def analysis(request):
    if request.user.is_authenticated:
        report = []
        data = {}
        l = []
        d = {}
        meta = ServiceMeta.objects.all()
        for m in meta:
            data = dict()
            l = list()
            data['ref'] = m.ref_no
            data['meta'] = m.servicecategory
            e = Estimated.objects.filter(fyref__isactive = True, meta_ref= m.id).values('meta_ref').annotate(e = Sum('metawise')).values('e').first()
            c = Bill.objects.filter(fyRef__isactive = True, meta_ref=m.id,isActive=True, complete = True).values('meta_ref').annotate(t = Sum('totalAmount')).values('t')
            r = list(c[:1])
            
            if e != None:
                data['estimated'] = e['e']
            else:
                data['estimated'] = 0
            if r:
               temp = r[0]
               data['collection'] = temp['t']
               p = temp['t']/e['e']*100
               data['progress']  = round(p,2)
            else:
                data['collection'] = 0
                data['progress'] = 0
            #dt = Service.objects.all().filter(bill__meta_ref=m.id,bill__isActive = True,bill__fyRef__isactive = True).values('bill__serviceRef').annotate(total = Sum('bill__totalAmount'), x = F('bill__serviceRef__serviceName'), y = F('bill__serviceRef'),z =F('bill__meta_ref'), e = F('estimated__servicewise')).values('e','x','y','z','total')
            services = Service.objects.filter(meta_ref=m.id,isActive=True)
            for s in services:
                d =dict()
                ex = Estimated.objects.filter(fyref__isactive = True, service_ref= s.id).values('service_ref').annotate(e = Sum('servicewise')).values('e','service_ref__serviceSub_ref')[0]
                co = Bill.objects.filter(fyRef__isactive = True,complete = True, serviceRef=s.id,isActive=True).values('serviceRef').annotate(t = Sum('totalAmount'))
                d['ref'] = ex['service_ref__serviceSub_ref']
                d['service'] = s.serviceName
                d['expected'] = ex['e']
                r = list(co[:1])
                if r:
                    temp = r[0]
                    d['collection'] = temp['t']
                    p = temp['t']/ex['e']*100
                    d['progress']  = round(p,2)
                else:
                    d['collection'] = 0
                    d['progress'] = 0

                l.append(d)
            data['details'] = l
            report.append(data)

        return render(request,'revenue\\analysis.html', {'analysis':report})
    else:
        return redirect('validate')
def addBillTmp(request):
     if request.user.is_authenticated:
        
         if request.POST:
             bill = BillTmp()
             bill.fyRef = FY.objects.get(pk = request.POST['fy_ref'])
             bill.billNo = request.POST['current_rasid_en']
             bill.billNoNp  = request.POST['current_rasid_np']
             bill.transactionDateNp = request.POST['trans_date_np']
             bill.clientName  =request.POST['customer_name']
             bill.address = request.POST['customer_address']
             bill.contact = request.POST['customer_contact']
             bill.totalAmount = request.POST['amount']
             bill.totalAmountNp = request.POST['amountnp']
             bill.totalAmountInLetters = request.POST['amountletter']
             bill.meta_ref = ServiceMeta.objects.get(pk =request.POST['meta'])
             bill.serviceRef = Service.objects.get(pk = request.POST['service_ref'])
             bill.org_ref = Office.objects.get(pk =request.POST['office'])
             bill.payment_method = PaymentMethod.objects.get(pk = request.POST['payment'])
             bill.token = request.POST['token']
             bill.user = request.user
             bill.save()
             new_val = int(request.POST['current_rasid_en'])+1
             RasidAllocation.objects.filter(officeRef=Office.objects.get(pk =request.POST['office'])).update(currentRasid=new_val)
            
             return redirect('revhome')

     else :
          return redirect('validate')
def addBill(request):
     if request.user.is_authenticated:
        
         if request.POST:
            try:
                bill = Bill()
                bill.fyRef = FY.objects.get(pk = request.POST['fy_ref'])
                bill.billNo = request.POST['current_rasid_en']
                bill.billNoNp  = request.POST['current_rasid_np']
                bill.transactionDateNp = request.POST['trans_date_np']
                bill.clientName  =request.POST['customer_name']
                bill.address = request.POST['customer_address']
                bill.contact = request.POST['customer_contact']
                bill.totalAmount = request.POST['amount']
                bill.totalAmountNp = request.POST['amountnp']
                bill.totalAmountInLetters = request.POST['amountletter']
                bill.meta_ref = ServiceMeta.objects.get(pk =request.POST['meta'])
                bill.serviceRef = Service.objects.get(pk = request.POST['service_ref'])
                bill.org_ref = Office.objects.get(pk =request.POST['office'])
                bill.payment_method = PaymentMethod.objects.get(pk = request.POST['payment'])
                bill.token = request.POST['token']
                if request.POST['status'] == 't':
                    bill.complete = True
                else:
                    bill.complete = False

                bill.user = request.user
                bill.save()
                new_val = int(request.POST['current_rasid_en'])+1
                RasidAllocation.objects.filter(officeRef=Office.objects.get(pk =request.POST['office'])).update(currentRasid=new_val)
                base_url = reverse('printbill')  
                query_string =  urlencode({'id': bill.id})  
                url = '{}?{}'.format(base_url, query_string)
                return redirect(url)
            except Exception as e:
                base_url = reverse('revhome')  
                query_string =  urlencode({'status': 'error','message':e})  
                url = '{}?{}'.format(base_url, query_string)
                return redirect(url)

     else :
          return redirect('validate')

def updateBill(request):
    
    try:
        ref = request.POST['ref']
        newName = request.POST['new_cust_name']
        newAddress = request.POST['new_cust_address']
        newContact = request.POST['new_cust_contact']
        x = Bill.objects.filter(id=ref).update(clientName=newName,address=newAddress,contact=newContact)
        if x > 0:
            query_string =  urlencode({'status':'success'}) 
        else:
            query_string =  urlencode({'status':'failed'}) 
    except Exception as e:
         query_string =  urlencode({'status':'error','message':e}) 
    base_url = reverse('revhome') 
    url = '{}?{}'.format(base_url, query_string)
    return redirect(url)


def disableBill(request):
    ref = request.POST['rasid_to_cancel']
    reason = request.POST['cancellation_reason']
    try:
        x = Bill.objects.filter(pk  = ref).update(isActive=False)
        if(x>0):
            c = Cancelled()
            c.rasidRef = Bill.objects.get(pk=ref)
            c.Remarks = reason
            y = c.save()
            query_string =  urlencode({'status':'success'})
    except Exception as e:
         print(e)
         query_string =  urlencode({'status':'error','message':e})

    base_url = reverse('revhome') 
    url = '{}?{}'.format(base_url, query_string)
    return redirect(url)



def searchToken(request):
    pass

def accountsettings(request):
    pass
def printBill(request):
    id = request.GET.get('id')
    r = request.GET.get('ref')
    if r == 'online':
        data = Bill.objects.filter(pk = id).filter(complete = True).values('billNo').annotate(bill = F('billNo'),service = F('serviceRef__serviceName'),amount = F('serviceRef__serviceCharge'),office = F('org_ref__officeName'),officeAddress = F('org_ref__officeAddress'),user =F('user__first_name')).values('bill','service','amount','totalAmountNp','totalAmountInLetters','office','officeAddress','user','transactionDateNp','clientName','address','contact')
        print(data)
    else:
        data = Bill.objects.filter(pk = id).values('billNo').annotate(service = F('serviceRef__serviceName'),amount = F('serviceRef__serviceCharge'),office = F('org_ref__officeName'),officeAddress = F('org_ref__officeAddress'),user =F('user__first_name')).values('service','amount','totalAmountNp','totalAmountInLetters','office','officeAddress','user','transactionDateNp','clientName','address','contact')
    return render(request,'revenue\\Bill.html', {'details':data, 'ref' : r})

def setupGuide(request):
    if request.user.is_authenticated:
       x = SetupGuideForm()
       d = SetupGuide.objects.all().order_by('-id')
       if request.POST:
           setupfrm = SetupGuideForm(request.POST)
           if setupfrm.is_valid():
               setupfrm.save()
       return render(request,'revenue\\setup.html',{'xform':x,'d':d})
    else:
        return redirect('validate')
def navigate(request):
    if request.user.is_authenticated :
         
        g =  SetupGuide.objects.filter(is_complete = False)
        base_url = reverse(g[0].path)
        
        request.session['refer'] = 'setup'
        request.session['stage'] = g[0].id
        if request.POST:
            
            de = request.POST['des']
            if de == 'finish':
               sid = request.POST['step']
               x = SetupGuide.objects.filter(id=sid).update(is_complete = True)


            else:
                del request.session['refer']
                request.session.modified = True
        return redirect(base_url)
        

def handler_not_found(request,exception):
    return render(request,'404.html',)

def handler500(request, *args, **argv):
    return render(request, '500.html', status=500)