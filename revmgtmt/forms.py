from django.db import models
from .models import FY,ServiceMeta,Service,Bill,Office,RasidAllocation,relmap,PaymentMethod, Estimated, SetupGuide,Guide
from django import forms
from django.contrib.auth.models import User


class FYform(forms.ModelForm):
    class Meta:
        model = FY
        fields = [
            'fy',
            'fy_np',
            'isactive'
        ]
        labels  = {
        'fy':'आ व (अङ्ग्रेजीमा)', 
        'fy_np':'आ व', 
        'isActive':'सक्रिय'
        }
        widgets = {
            'fy': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'Fiscal Year in English '
            }),
            'fy_np': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'Fiscal Year in Nepali '
            }),
        }
class PaymentMethodForm(forms.ModelForm):
    class Meta:
        model = PaymentMethod
        fields = [
            'method',
            'paymentId',
            'isactive'
        ]
        widgets = {
            'method': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'Payment Method  Ex: Cash, Bank etc.. '
            }),
            'paymentId': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'Respective account/id for payment method'
            }),
        }
class OfficeForm(forms.ModelForm):
    class Meta:
        model = Office
        fields = [
            'officeName',
            'officeAddress',
        
        ]
        widgets = {
            'officeName': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'कार्यालयको नाम'
            }),
            'officeAddress': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'कार्यालयको ठेगाना'
            }),
        }


class ServiceMetaForm (forms.ModelForm):
    class Meta:
        model = ServiceMeta
        fields = [
            'ref_no',
            'servicecategory'
        ]
        widgets = {
            'ref_no': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'राजश्व मुख्य शिर्षक संकेत नं '
            }),
            'servicecategory': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'राजश्व मुख्य शिर्षक '
            }),
        }
class ServiceForm(forms.ModelForm):
    class Meta:
        model = Service
        qset = ServiceMeta.objects.values_list('id','servicecategory')
        
        fields = [
            'meta_ref',
            'serviceSub_ref',
            'serviceName',
            'serviceCharge',
            'serviceChargeNp',
            'isActive'
        ]
        labels  = {
        'meta_ref':'राजश्व शिर्षक', 
        'serviceSub_ref':'संकेत नं', 
        'serviceName':'शिर्षक', 
        'serviceCharge':'शुल्क', 
        'serviceChargeNp':'शुल्क(नेपाली)',
        'isActive':'सक्रिय'
        }
        widgets = {
            'meta_ref': forms.Select(attrs={'class':'form-control'}),
            'serviceSub_ref': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'राजश्व संंकेत नं '
            }),
            'serviceName': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'सेवाको नाम'
            }),
            'serviceCharge': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'सेवा शुल्क '
            }),
            'serviceChargeNp': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'सेवा शुल्क '
            }),
        }
class rasidAllocationForm(forms.ModelForm):
    class Meta:
        model = RasidAllocation
       
        fields = [
            'officeRef',
            'fyRef',
            'lowerRasid',
            'upperRasid',
            'currentRasid',
            'isActive'
        ]
        labels  = {
        'fyRef':'आ व', 
        'officeRef':'कार्यालय', 
        'lowerRasid':'सुरु रसिद नं', 
        'upperRasid':'अन्तिम रसिद नं', 
        'currentRasid':'हालको रसिद नं',
        'isActive':'सक्रिय'
        }
        widgets = {
            'officeRef': forms.Select(attrs={'class':'form-control col-sm-6'}),
            'fyRef': forms.Select(attrs={'class':'form-control col-sm-6'}),
            'lowerRasid': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'lowerrasid limit'
            }),
            'upperRasid': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'max rasid limit '
            }),
            'currentRasid': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'सुरु'
            }),
        }
class UserManagementForm(forms.ModelForm):
    class Meta:
        model = relmap
        #office = Office.objects.values_list('id','officeName')
        #officelist = [(x.get('id'), x.get('officeName')) for x in office.values()]

        #users = User.objects.values_list('id','first_name')
        #userslist = [(x.get('id'), x.get('first_name')) for x in users.values()]
        fields = [
            'offRef',
            'uRef',
            
        ]
        widgets = {
            'offRef': forms.Select(choices=[('a','b')],attrs={'class':'form-control'}),
            'uRef': forms.Select(choices=[('1','d')],attrs={'class':'form-control'})
        }

class SetupGuideForm(forms.ModelForm):
    class Meta:
        model = SetupGuide
        fields = [
              'setupName',
              'path' 
        ]
        
        widgets = {
            'setupName': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'Setup Name '
            }),
            'path': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'Path '
            }),
        }

class GuideForm(forms.ModelForm):
    class Meta:
        model = Guide
        fields = [
              'setupName',
              'path' ,
              'is_complete'
        ]
        
        widgets = {
            'fy': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'Setup Name '
            }),
            'fy_np': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'Path '
            }),
        }