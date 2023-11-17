from django.db import models

# Create your models here.

class user_Registration(models.Model):
    Full_Name = models.CharField(max_length=100)
    Email = models.EmailField(max_length=50, unique=True)
    Mobile = models.IntegerField(unique=True)
    Password = models.TextField(max_length=20)
    Confirm_Password = models.CharField(max_length=20)
    