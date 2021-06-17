from django.conf.urls import handler404, handler500
from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('', views.iptHome, name="revhome"),
    path('sectors', views.sectors, name="sectors"),
    path('landunits', views.landUnits, name="landunits"),
    path('landdetails', views.landDetails, name="landunits"),
    path('roadaccess', views.roadAccess, name="roadaccess"),
    path('buildingtypes', views.buildingTypes, name="buildingtypes"),
    path('buildingusage', views.buildingUsage, name="buildingusage"),
    path('landusage', views.landUsage, name="landusage"),
    path('landtaxes', views.landTaxes, name="landtaxes"),
    path('relations', views.Relations, name="landtaxes"),
    path('occupations', views.Occupations, name="occupations"),
    path('infrastructuretaxes', views.infraStructureTaxes, name="infrastructuretaxes"),
    path('deprication',views.Deprication,name='deprication'),
    path('personalinfo',views.personalInfo,name='personalinfo'),
    path('familymembers',views.familyDetails,name='familymembers')
   
]

handler404 = views.handler_not_found
handler500 = views.handler500
