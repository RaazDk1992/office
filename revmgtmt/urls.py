from django.conf.urls import handler404, handler500
from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('', views.revhome, name="revhome"),
    path('user/', views.verification, name="user"),
    path('addservice', views.addService, name="service"),
    path('editservice', views.editService, name="editservice"),
    path('toggleservice', views.toggleService, name="toggleservice"),
    path('addpayment', views.addPayment, name="paymentmethod"),
    path('tmpbill',views.addBillTmp,name="tmpbill"),
    path('bill',views.addBill,name="bill"),
    path('tokensearch',views.tokenSearch,name="tokensearch"),
    path('estimate',views.estimate,name="estimate"),
    path('analysis',views.analysis,name="analysis"),
    path('updatebill',views.updateBill,name="updatebill"),
    path('disablebill',views.disableBill,name="disablebill"),
    path('printbill',views.printBill,name="printbill"),
    path('addoffice',views.addOffice, name="addoffice"),
    path('rasidallocation',views.rasidAllocation, name="rasidallocation"),
    path('rasidmanagement',views.rasidManagement, name="rasidmanagement"), #path to disable rasids
    path('assign',views.assign, name="assign"),
    path('addfy', views.addFy, name="addfy"),
    path('disablefy', views.disableFy, name="disablefy"),
    path('servicemeta', views.addServiceMeta, name="servicemeta"),
    path('search', views.search, name="servicemeta"),
    path('report',views.report,name="report"),
    path('user/register', views.register, name="register"),
    path('user/validate', views.verification, name="validate"),
    path('user/logout', views.logout, name="logout"),
    path('usermanagement',views.report,name="usermanagement"),
    #path('gide',views.report,name="usermanagement"),
    path('accountsettings',views.accountSettings,name="accountsettings"),
    path('accountar',views.acceptReject,name="accountdecision")
   

]

handler404 = views.handler_not_found
handler500 = views.handler500
