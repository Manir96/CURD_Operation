from django.db import models
from dashboard_from.models import Doctor_Depert_name
from dashboard_from.models import Sub_Disease

# Create your models here.

class Symptom(models.Model):
    id = models.AutoField(primary_key=True)
    depart_id = models.ForeignKey(Doctor_Depert_name, on_delete=models.CASCADE,null=True, blank=True)
    disease_id = models.ForeignKey(Sub_Disease, on_delete=models.CASCADE,null=True, blank=True)
    symptom1 = models.CharField(max_length=100,null=True, blank=True)
    symptom2 = models.CharField(max_length=100,null=True, blank=True)
    symptom3 = models.CharField(max_length=100,null=True, blank=True)
    symptom4 = models.CharField(max_length=100,null=True, blank=True)
    symptom5 = models.CharField(max_length=100,null=True, blank=True)
    symptom6 = models.CharField(max_length=100,null=True, blank=True)
    symptom7 = models.CharField(max_length=100,null=True, blank=True)
    symptom8 = models.CharField(max_length=100,null=True, blank=True)
    symptom9 = models.CharField(max_length=100,null=True, blank=True)
    symptom10 = models.CharField(max_length=100,null=True, blank=True)
    symptom11 = models.CharField(max_length=100,null=True, blank=True)
    symptom12 = models.CharField(max_length=100,null=True, blank=True)
    symptom13 = models.CharField(max_length=100,null=True, blank=True)
    symptom14 = models.CharField(max_length=100,null=True, blank=True)
    symptom15 = models.CharField(max_length=100,null=True, blank=True)
    symptom16 = models.CharField(max_length=100,null=True, blank=True)
    symptom17 = models.CharField(max_length=100,null=True, blank=True)
