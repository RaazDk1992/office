from django.db import models
from django.db.models.base import Model
from django.db.models.deletion import RESTRICT
from django.forms.models import inlineformset_factory

# Create your models here.

class Sectors(models.Model):
    areaName  =models.CharField(max_length=100)
    is_active = models.BooleanField(default=True)
    def __str__(self):
        return self.areaName

class RoadAccessibilityState(models.Model):
    road_type = models.CharField(max_length=50)
    
    is_active = models.BooleanField(default=True)
    def __str__(self):
        return self.road_type


class Occupation(models.Model):
    occupation = models.CharField(max_length=100)
    is_active = models.BooleanField(default=True)
    def __str__(self):
        return self.occupation
class Relation(models.Model):
    relation = models.CharField(max_length=50)
    is_active = models.BooleanField(default=True)
    def __str__(self):
        return self.relation

class LandUnits(models.Model):
    unit = models.CharField(max_length=20)
    area_per_unit = models.CharField(max_length=50)
    area_per_unit_ft = models.CharField(max_length=80)
    is_active = models.BooleanField(default=True)
    def __str__(self):
        return self.unit

class LandUsage(models.Model):
    usage = models.CharField(max_length=500)
    is_active = models.BooleanField(default=True)
    def __str__(self):
        return self.usage
    
class BuildingType(models.Model):
    type = models.CharField(max_length=50)
    is_active = models.BooleanField(default=True)
    def __str__(self):
        return self.type
   

class BuildingUsage(models.Model):
    usage = models.CharField(max_length=100)
    is_active = models.BooleanField(default=True)
    def __str__(self):
        return self.usage


class LandTaxes(models.Model):
    sector = models.ForeignKey(Sectors, on_delete=models.RESTRICT)
    road_access = models.ForeignKey(RoadAccessibilityState, on_delete=models.RESTRICT)
    tax_amount = models.FloatField()
    is_active = models.BooleanField(default=True)

class Deprication(models.Model):

    type = models.ForeignKey(BuildingType,on_delete=models.RESTRICT)
    rate = models.FloatField()
    is_active = models.BooleanField(default=True)

class FineReward(models.Model):

    date_from = models.DateField()
    date_to = models.DateField()
    type = models.CharField(max_length=10)
    rate = models.FloatField()
    is_active = models.BooleanField(default=True)

class InfrastructureTaxes(models.Model):
    sector = models.ForeignKey(Sectors,on_delete=models.RESTRICT)
    road_access = models.ForeignKey(RoadAccessibilityState,on_delete=models.RESTRICT)
    building_type = models.ForeignKey(BuildingType,on_delete=models.RESTRICT)
    building_usage = models.ForeignKey(BuildingUsage,on_delete=models.RESTRICT)
    tax_amount = models.FloatField()
    is_active = models.BooleanField(default=True)


class PersonalInfo(models.Model):
    fullname = models.CharField(max_length=100)
    address = models.CharField(max_length=200)
    contact = models.CharField(max_length=200)
    occ = models.ForeignKey(Occupation,on_delete=models.RESTRICT)
class FamilyMembers(models.Model):
    familyHead = models.ForeignKey(PersonalInfo,on_delete=models.RESTRICT)
    fullName = models.CharField(max_length=100)
    relation = models.ForeignKey(Relation, on_delete=models.RESTRICT)
    Occupation = models.ForeignKey(Occupation,on_delete=models.RESTRICT)

class LandDetails(models.Model):
    owner = models.ForeignKey(PersonalInfo,on_delete=models.RESTRICT)
    kitta = models.CharField(max_length=20)
    unit = models.ForeignKey(LandUnits, on_delete=models.RESTRICT)
    usage = models.ForeignKey(LandUsage,on_delete=models.RESTRICT)
    area = models.FloatField()
    accessibleToRoad =models.ForeignKey(RoadAccessibilityState,on_delete=models.RESTRICT)
    pricePerUnit = models.IntegerField()
    property_value = models.IntegerField()
    is_active = models.BooleanField(default=True)


class Buildings(models.Model):
    owner = models.ForeignKey(PersonalInfo,on_delete=models.RESTRICT)
    landRef = models.ForeignKey(LandDetails, on_delete=models.RESTRICT)
    made_year = models.DateField()
    length = models.FloatField()
    width = models.FloatField()
    occupiedArea = models.FloatField()
    buildingType = models.ForeignKey(BuildingType,on_delete=models.RESTRICT)
    buildingUsage = models.ForeignKey(BuildingUsage,on_delete=models.RESTRICT)
    accessibleToRoad =models.ForeignKey(RoadAccessibilityState,on_delete=models.RESTRICT)

    stories = models.IntegerField()
    price = models.IntegerField()
    is_active = models.BooleanField(default=True)





    