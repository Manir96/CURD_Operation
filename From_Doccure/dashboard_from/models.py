from django.db import models


# Create your models here.

class Doctor_Depert_name(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=500, unique=True,null=True, blank=True)
    
class Sub_Disease(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=500,unique=True,null=True, blank=True)
    dep_id = models.ForeignKey(Doctor_Depert_name, on_delete=models.CASCADE,null=True, blank=True)
