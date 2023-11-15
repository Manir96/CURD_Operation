from django.contrib import admin
from django.urls import path
from . import views as prediction


urlpatterns = [  
    path('', prediction.prediction_panel,name='prediction_panel'),
    path('get_data/', prediction.get_data, name='get_data'),
    path('get_dept_data/', prediction.get_dept_data, name='get_dept_data'),
    path('prediction_store/', prediction.prediction_store,name='prediction_store'),
    
]