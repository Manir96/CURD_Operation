from django.contrib import admin
from django.urls import path
from . import views as symptom


urlpatterns = [  
    path('', symptom.symptom_panel,name='sym_panel'),
    path('symptom_store/', symptom.symptom_store,name='symptom_store'),
    
]