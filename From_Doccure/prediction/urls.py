from django.contrib import admin
from django.urls import path
from . import views as prediction


urlpatterns = [  
    path('', prediction.prediction_panel,name='prediction_panel'),
    path('prediction_store/', prediction.prediction_store,name='prediction_store'),
    
]