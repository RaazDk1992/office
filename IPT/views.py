from django.core import serializers
from django.forms import fields
from IPT.models import Buildings, FamilyMembers, LandDetails, PersonalInfo
from django.shortcuts import render
from django.db.models import Sum
from django.db.models import Q,F
from django.core.serializers import serialize


from django.urls import reverse
from urllib.parse import urlencode
from django.shortcuts import get_object_or_404
from django.http import Http404
from django.http import HttpResponse
from django.contrib import messages
from django.template import RequestContext
import json as simplejson

# Create your views here.
from django.shortcuts import render,redirect
from django.contrib.auth.models import User,auth 
from django.contrib.auth import authenticate,login
from django.db.models import Count
from .forms import BuildingTypesForm, BuildingUsageForm, BuildingsDetailsFormset, DepricationForm, FamilyDetailsFormset, InfrastructureTaxForm, LandDetailsFormset, LandTaxesForm, LandUsageForm, OccupationsForm, PersonalInfoForm, RelationsForm, SectorsForm,LandUnitsForm,RF
# Create your views here.

def iptHome(request):
    personalf = PersonalInfoForm()
    formset = FamilyDetailsFormset(queryset=FamilyMembers.objects.none())
    landformset = LandDetailsFormset(queryset=LandDetails.objects.none())
    buildingsformset = BuildingsDetailsFormset(queryset=Buildings.objects.none())

    return render(request,'ipt/home.html',{'pform':personalf,'formset':formset, 'ldf':landformset, 'bdf':buildingsformset})
def sectors(request):
      form = SectorsForm()
      if request.POST:
            form = SectorsForm(request.POST)
            if form.is_valid():
                form.save()
                
        
      return render(request,'ipt\\sector.html',{'sectorform':form})

def landUnits(request):
    uform = LandUnitsForm()
    if request.POST:
            form = LandUnitsForm(request.POST)
            if form.is_valid():
                form.save()
                
        
    return render(request,'ipt\\landunits.html',{'unitform':uform})
def roadAccess(request):
    rform = RF()
    if request.POST:
        f = RF(request.POST)
        if f.is_valid:
            f.save()
    return render(request,'ipt/roadaccess.html',{'rform':rform})

def buildingTypes(request):
    bform  = BuildingTypesForm()
    if request.POST:
        bfrm = BuildingTypesForm(request.POST)
        if bfrm.is_valid:
            bfrm.save()
    return render(request,'ipt/buildingtype.html',{'bform':bform})
def Deprication(request):
    idf = DepricationForm()
    if request.POST:
        df = DepricationForm(request.POST)
        if df.is_valid:
            df.save()
    return render(request,'ipt/depricationform.html',{'idf':idf})
def buildingUsage(request):
    buf = BuildingUsageForm()
    if request.POST:
        bf = BuildingUsageForm(request.POST)
        if bf.is_valid:
            bf.save() 
    return render(request,'ipt/buildingusage.html',{'bform':buf})
def landUsage(request):
    luf = LandUsageForm()
    if request.POST:
        Lf = LandUsageForm(request.POST)
        if Lf.is_valid:
            Lf.save()
    return render(request,'ipt/landusage.html',{'luf':luf})

def Occupations(request):
    ocf = OccupationsForm()
    if request.POST:
        of = OccupationsForm(request.POST)
        if of.is_valid:
            of.save()
    return render(request,'ipt/occupation.html',{'ocf':ocf})
def Relations(request):
    ref = RelationsForm()
    if request.POST:
        rf = RelationsForm(request.POST)
        if rf.is_valid:
             rf.save()
    return render(request,'ipt/relations.html',{'ref':ref})

def landTaxes(request):
    ltf = LandTaxesForm()
    if request.POST:
        Lform = LandTaxesForm(request.POST)
        if Lform.is_valid:
            Lform.save()
    return render(request,'ipt/landtaxes.html',{'ltf':ltf})
def infraStructureTaxes(request):
    iftf = InfrastructureTaxForm()
    if request.POST:
        ift = InfrastructureTaxForm(request.POST)
        if ift.is_valid:
            ift.save()
    return render(request,'ipt/infrastructuretaxes.html',{'iftf':iftf})


def personalInfo(request):
    pinfo = PersonalInfoForm()
   
    if request.POST:
      
        pf = PersonalInfoForm(request.POST)
        if pf.is_valid:
            try:
                f = pf.save()
                if f.id !=None:
                    response = {
                        'status': 'success',
                         'message': 'data saved!!',
                         'person': f.pk,
                         'name':f.fullname
                        }
                    data = simplejson.dumps(response)
                else:
                    response = {
                        'status': 'fail',
                         'message': 'data could not be saved!!',
                        }
                    data = simplejson.dumps(response)
            except Exception as e :
                response = {
                        'status': 'error',
                         'message': str(e),
                        }
                data = simplejson.dumps(response)

    return HttpResponse(data, content_type='application/json')
    
def familyDetails(request):
    pinfo = FamilyMembers()
   
    if request.POST:
       formset = FamilyDetailsFormset(data=request.POST)
       if formset.is_valid:
            try:
                f = formset.save()
                if f:
                    response = {
                        'status': 'success',
                         'message': 'data saved!!',
                        }
                    data = simplejson.dumps(response)
                else:
                    response = {
                        'status': 'fail',
                         'message': 'data could not be saved!!',
                        }
                    data = simplejson.dumps(response)
            except Exception as e :
                response = {
                        'status': 'error',
                         'message': str(e),
                        }
                data = simplejson.dumps(response)

    return HttpResponse(data, content_type='application/json')
    

def landDetails(request):
    if request.POST:
       formset = LandDetailsFormset(data=request.POST)
       if formset.is_valid:
            try:
                f = formset.save()
                if f:
                    _owner = PersonalInfo.objects.last()
                    response = {
                        'status': 'success',
                         'message': 'data saved!!',
                         'data':serializers.serialize('json',LandDetails.objects.filter(owner = _owner ))
                        }
                    data = simplejson.dumps(response)
                else:
                    response = {
                        'status': 'fail',
                         'message': 'data could not be saved!!',
                        }
                    data = simplejson.dumps(response)
            except Exception as e :
                response = {
                        'status': 'error',
                         'message': str(e),
                        }
                data = simplejson.dumps(response)

    return HttpResponse(data, content_type='application/json')
    


def handler_not_found(request,exception):
    return render(request,'404.html',)

def handler500(request, *args, **argv):
    return render(request, '500.html', status=500)