from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone
from django.db.models.signals import post_save
from django.dispatch import receiver


# Create your models here.

def user_unicode_patch(self):
    return '%s %s' % (self.first_name, self.last_name)

class Office(models.Model):
    officeName = models.CharField(max_length = 200)
    officeAddress = models.CharField(max_length = 100)
    is_active = models.BooleanField(default=True)
    def __str__(self):
        return self.officeName
        
class Designation(models.Model):
    designation = models.CharField(max_length=100)
    designation_en = models.CharField(max_length=100)
    is_active = models.BooleanField(default=True)
    def __str__(self):
        return self.designation
class relmap(models.Model):
    offRef = models.ForeignKey(Office, on_delete=models.RESTRICT)
    uRef = models.OneToOneField(User,on_delete=models.RESTRICT)
    
class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    desc = models.TextField(max_length=500, blank=True)
    sanketNo = models.CharField(max_length=30, blank=True)
    contactNo = models.CharField(max_length=13, blank=True)
    manual_disable = models.BooleanField(default=False)
    first_time   = models.BooleanField(default=True)
    is_active = models.BooleanField(default=False)



@receiver(post_save, sender=User)
def create_user_profile(sender, instance, created, **kwargs):
    if created:
        Profile.objects.create(user=instance)

@receiver(post_save, sender=User)
def save_user_profile(sender, instance, **kwargs):
    instance.profile.save()





class FY(models.Model):
    fy = models.CharField(max_length=30)
    fy_np = models.CharField(max_length=30)
    isactive = models.BooleanField(default=True)
    def __str__(self):
        return self.fy_np
    class Meta:
        unique_together = ('fy', 'fy_np','isactive',)

class ServiceMeta(models.Model):

    ref_no = models.CharField(max_length=10)
    servicecategory = models.CharField(max_length=150)
    def __str__(self):
        return self.servicecategory


class Service(models.Model):
    meta_ref = models.ForeignKey(ServiceMeta,on_delete=models.RESTRICT)
    serviceSub_ref = models.CharField(max_length=20)
    serviceName = models.CharField(max_length=300)
    serviceCharge = models.IntegerField()
    serviceChargeNp = models.CharField(max_length=5)
    isActive = models.BooleanField(default=True)
    def __str__(self):
        return self.serviceName
  
class RasidAllocation(models.Model):
    officeRef = models.ForeignKey(Office,on_delete=models.RESTRICT)
    fyRef = models.ForeignKey(FY,on_delete=models.RESTRICT)
    lowerRasid = models.IntegerField()
    upperRasid = models.IntegerField()
    currentRasid = models.IntegerField()
    isActive = models.BooleanField(default=True)
    class Meta:
        unique_together = ('fyRef', 'lowerRasid','upperRasid',)

class PaymentMethod(models.Model):
    method = models.CharField(max_length=100)
    paymentId = models.CharField(max_length=200)
    isactive = models.BooleanField(default=True)

class Bill(models.Model):
    fyRef = models.ForeignKey(FY,on_delete=models.RESTRICT)
    billNo = models.IntegerField()
    billNoNp = models.CharField(max_length = 10)
    transactionDate = models.DateField(auto_now=True)
    transactionDateNp = models.CharField(max_length=20)
    clientName = models.CharField(max_length=200)
    address = models.CharField(max_length=200)
    contact = models.CharField(max_length=11)
    serviceRef = models.ForeignKey(Service,on_delete=models.RESTRICT)
    totalAmount = models.IntegerField()
    totalAmountNp = models.CharField(max_length=5)
    totalAmountInLetters = models.CharField(max_length=100)
    meta_ref = models.ForeignKey(ServiceMeta, on_delete = models.RESTRICT)
    org_ref = models.ForeignKey(Office, on_delete = models.RESTRICT)
    user  = models.ForeignKey(User,on_delete=models.RESTRICT)
    payment_method = models.ForeignKey(PaymentMethod,on_delete=models.RESTRICT)
    complete = models.BooleanField(default=False)
    token = models.CharField(max_length=150)
    isActive = models.BooleanField(default=True)
    class Meta:
        unique_together = ('fyRef', 'billNo',)
   

class Cancelled(models.Model):
    rasidRef = models.OneToOneField(Bill, on_delete=models.RESTRICT)
    Remarks = models.TextField()
    date_cancelled = models.DateTimeField(auto_now=True)
    
class Estimated(models.Model):
    meta_ref = models.ForeignKey(ServiceMeta, on_delete=models.RESTRICT)
    service_ref = models.ForeignKey(Service, on_delete= models.RESTRICT)
    fyref = models.ForeignKey(FY, on_delete = models.RESTRICT)
    metawise = models.IntegerField()
    servicewise = models.IntegerField()
    