
from django.db import models
from django.db.models.signals import post_save
from django.conf import settings
from django.dispatch import receiver
from django.contrib.auth.models import AbstractUser
from rest_framework.authtoken.models import Token
# Create your models here.

class User(AbstractUser):
    is_doctor = models.BooleanField(default=False)
    is_patient = models.BooleanField(default=False)
    is_developer = models.BooleanField(default=False)

    def __str__(self):
        return self.username
@receiver(post_save,sender = settings.AUTH_USER_MODEL)
def create_auth_token(sender,instance=None,created=False, **kwargs):
    if created:
        Token.objects.create(user = instance)

class Patient(models.Model):
    username = models.OneToOneField(User,related_name = "Patient",on_delete=models.CASCADE)
    phone = models.CharField(max_length = 13,null=True,blank =True)
    email = models.EmailField(null=True,blank =True)

    def __str__(self):
        return self.username


class Doctor(models.Model):
    username = models.OneToOneField(User,related_name = "Doctor",on_delete=models.CASCADE)
    phone = models.CharField(max_length = 13,null=True,blank =True)
    email = models.EmailField(null=True,blank =True)

    def __str__(self):
        return self.username


class Developer(models.Model):
    username = models.OneToOneField(User,related_name = "Developer",on_delete=models.CASCADE)
    phone = models.CharField(max_length = 13,null=True,blank =True)
    email = models.EmailField(null=True,blank =True)



    def __str__(self):
        return self.username
