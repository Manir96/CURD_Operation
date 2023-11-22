from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class user_Registration(models.Model):
    Full_Name = models.CharField(max_length=100)
    Email = models.EmailField(max_length=50, unique=True)
    Mobile = models.IntegerField(unique=True)
    Password = models.TextField(max_length=20)
    Confirm_Password = models.CharField(max_length=20)
    
    



class aut_user_register(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    fname = models.CharField(max_length=200)
    email = models.CharField(max_length=200)
    mobile = models.CharField(max_length=200)
    password1 = models.CharField(max_length=200)
    
   