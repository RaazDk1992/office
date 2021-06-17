
from django import forms
from django.forms import modelformset_factory
from django.contrib.auth.models import User

from .models import Buildings, Deprication, FamilyMembers, FineReward, LandDetails, LandTaxes,InfrastructureTaxes, Occupation, PersonalInfo, Relation,RoadAccessibilityState,Sectors,LandUnits,LandUsage,BuildingType,BuildingUsage
class OccupationsForm(forms.ModelForm):
    class Meta:
        model = Occupation
        fields = [
            'occupation',
            'is_active'
        ]
        labels  = {
        'occupation':'पेशा',  
        'is_active':'सक्रिय'
        }
        widgets = {
            'occupation': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'पेशा जस्तै: कृषि '
            })
        }

class SectorsForm(forms.ModelForm):
    class Meta:
        model = Sectors
        fields = [
            'areaName',
            'is_active'
        ]
        labels  = {
        'areaName':'क्षेत्र',  
        'is_active':'सक्रिय'
        }
        widgets = {
            'areaName': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'ठाउँको नाम: जस्तै बाह्र गाउँ '
            })
        }
class RF(forms.ModelForm):
    class Meta:
        model = RoadAccessibilityState
        fields = [
            'road_type',
            'is_active'
        ]
        labels  = {
        'road_type':'सडक प्रकार',  
        'is_active':'सक्रिय'
        }
        widgets = {
            'road_type': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'प्रकार: जस्तै कच्ची/ पक्की/ सहायक सडक  '
            }),
        }


class BuildingTypesForm(forms.ModelForm):
    class Meta:
        model = BuildingType
        fields = [
            'type',
            'is_active'
        ]
        labels  = {
        'type':'भवनको प्रकार',  
        'is_active': 'सक्रिय'
        }
        widgets = {
            'type': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'प्रकार: जस्तै कच्ची/पक्की '
            })
        }
class LandUnitsForm(forms.ModelForm):
    class Meta:
        model = LandUnits
        fields = [
            'unit',
            'area_per_unit',
            'is_active'
        ]
        labels  = {
        'unit':'ईकाई',  
        'area_per_unit':'प्रति ईकाई क्षेत्रफल',
        'is_active': 'सक्रिय'
        }
        widgets = {
            'unit': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'ईकाई: जस्तै विगाहा/कठ्ठा  '
            }),
             'area_per_unit': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'प्रति ईकाई क्षेत्रफल  '
            })
        }

class LandUsageForm(forms.ModelForm):
    class Meta:
        model = LandUsage
        fields = [
            'usage',
            'is_active'
        ]
        labels  = {
        'usage':'प्रायोजन',  
        'is_active': 'सक्रिय'
        }
        widgets = {
            'usage': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'प्रायोजन: जस्तै खेतीपाति/ बसोबास  '
            })
        }
class BuildingUsageForm(forms.ModelForm):
    class Meta:
        model = BuildingUsage
        fields = [
            'usage',
            'is_active'
        ]
        labels  = {
        'usage':'प्रायोजन',  
        'is_active': 'सक्रिय'
        }
        widgets = {
            'usage': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'प्रायोजन: जस्तै बसोबास/ ब्यापार/ कार्यालय '
            })
        }

class DepricationForm(forms.ModelForm):
    class Meta:
        model = Deprication
        fields = [
            'type',
            'rate',
            'is_active'
        ]
        labels  = {
        'type':'प्रकार',  
        'rate' : 'ह्रास दर',
        'is_active': 'सक्रिय'
        }
        widgets = {
            'type':forms.Select(attrs={'class':'form-control'}),
            'rate': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'प्रायोजन: जस्तै बसोबास/ ब्यापार/ कार्यालय '
            })
        }
class FineRewardForm(forms.ModelForm):
    class Meta:
        model = FineReward
        fields = [
            'date_from',
            'date_to',
            'type',
            'rate',
            'is_active'
        ]

        labels  = {
        'date_from':'देखी',  
        'date_to':'सम्म',
        'type': 'छुट वा जरिवाना',
        'is_active':'सक्रिय'
        }


class RelationsForm(forms.ModelForm):
    class Meta:
        model = Relation
        fields = [
            'relation',
            'is_active'

        ]
        labels = {
            'relation': 'सम्बन्ध',
            'is_active':'सक्रिय'

        }
        widgets = {
            'relation':forms.TextInput(attrs={'class':'form-control',
            'placeholder':'जस्तै बाबु/आमा  '
            
            })
        }


class LandTaxesForm(forms.ModelForm):
    class Meta:
        model = LandTaxes
        fields = [
            'sector',
            'road_access',
            'tax_amount',
            'is_active'
        ]
        labels  = {
        'sector':'क्षेत्र',  
        'road_access':'सडकको अवस्थिति',
        'tax_amount': 'राजश्वदर',
        'is_active':'सक्रिय'
        }
        widgets = {
            'sector':forms.Select(attrs={'class':'form-control'}),
            'road_access':forms.Select(attrs={'class':'form-control'}),
            'tax_amount': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'दर % मा  '
            })
        }
class InfrastructureTaxForm(forms.ModelForm):
    class Meta:
        model = InfrastructureTaxes
        fields = [
            'sector',
            'road_access',
            'building_type',
            'building_usage',
            'tax_amount',
            'is_active'
        ]
        labels  = {
        'sector':'क्षेत्र',  
        'road_access':'सडकको अवस्थिति',
        'building_type':'भवनको प्रकार',
        'building_usage': 'प्रायोजन',
        'tax_amount': 'राजश्वदर',
        'is_active':'सक्रिय'
        }
        widgets = {
            'sector':forms.Select(attrs={'class':'form-control'}),
            'road_access':forms.Select(attrs={'class':'form-control'}),
            'building_type':forms.Select(attrs={'class':'form-control'}),
             'building_usage':forms.Select(attrs={'class':'form-control'}),
            'tax_amount': forms.TextInput(attrs={
                'class':'form-control col-sm-6',
                'placeholder':'ईकाई: जस्तै विगाहा/कठ्ठा  '
            })
        }
class PersonalInfoForm(forms.ModelForm):
    class Meta:
        model = PersonalInfo
        fields = [
            'fullname',
            'address',
            'contact',
            'occ'
        ]
       
        widgets = {
            'fullname': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'पुरा नाम '
            }),
            'address': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'ठेगाना  '
            }),
             'contact': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'सम्पर्क '
            }),
            'occ':forms.Select(attrs={'class':'form-control'})
            
        }

class FamilyMemberForm(forms.ModelForm):
    class Meta:
        model = FamilyMembers
        fields = [
            'familyHead',
            'fullName',
            'relation',
            'Occupation'
        ]
        widgets = {
            'familyHead': forms.HiddenInput(attrs={
                'class':'form-control col-sm-2 currentPerson',
            }),
            'fullName': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'पुरा नाम '
            }),
            'relation': forms.Select(attrs={
                'class':'form-control',
            }),
             'Occupation': forms.Select(attrs={
                'class':'form-control',
                'placeholder':'xx'

               
            })       
        }

FamilyDetailsFormset = modelformset_factory(
    FamilyMembers, form=FamilyMemberForm, extra=1
)


class LandDetailsForm(forms.ModelForm):
    class Meta:
        model = LandDetails
        fields = [
            'owner',
            'kitta',
            'unit',
            'usage',
            'area',
            'accessibleToRoad',
            'pricePerUnit',
            'property_value',
            'is_active'
        ]
        widgets = {
            'owner': forms.HiddenInput(attrs={
                'class':'form-control currentPerson'
            }),
            'kitta': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'कित्ता नं'
            }),
            'unit': forms.Select(attrs={
                'class':'form-control',
            }),
             'usage': forms.Select(attrs={
                'class':'form-control',
            }),
            'area': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'क्षेत्रफल '
            }),
            'accessibleToRoad': forms.Select(attrs={
                'class':'form-control',
            }),
             'pricePerUnit': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'प्रति विगाहा/कठ्ठा वा रोपनी मुल्य'
            }),
             'property_value': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'मुल्य स्वघोषणा'
            }),

        }
        labels  = {
            'owner' : 'owner',
            'kitta' : 'कित्ता नं',
            'unit' : ' ईकाई',
            'usage' : 'प्रायोजन',
            'area' : 'क्षेत्रफल',
            'accessibleToRoad' :'सडक अवस्थिति',
            'pricePerUnit': 'प्रति ईकाई मुल्य',
            'property_value': 'जम्मा मुल्य',
            'is_active':'सक्रिय'
        }
LandDetailsFormset = modelformset_factory(
    LandDetails, form=LandDetailsForm, extra=1
)

class BuildingsForm(forms.ModelForm):
    class Meta:
        model = Buildings
        fields = [
            'owner',
            'landRef',
            'made_year',
            'occupiedArea',
            'buildingType',
            'buildingUsage',
            'stories',
            'price',
            'is_active'
        ]
        widgets = {
            'owner': forms.HiddenInput(attrs={
                'class':'form-control col-sm-2 currentPerson'
            }),
            'landRef': forms.Select(attrs={
                'class':'form-control',
            }),
            'made_year': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'बनेको मिति'
            }),
             'occupiedArea': forms.TextInput(attrs={
                'class':'form-control',
               
            }),
            'buildingType': forms.Select(attrs={
                'class':'form-control',
                
            }),
             'buildingUsage': forms.Select(attrs={
                'class':'form-control',
            }),
             'stories': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'तल्ला'
            }),
            'price': forms.TextInput(attrs={
                'class':'form-control',
                'placeholder':'मुल्य स्वघोषणा'
            })

        }


BuildingsDetailsFormset = modelformset_factory(
    Buildings, form=BuildingsForm, extra=1
)
