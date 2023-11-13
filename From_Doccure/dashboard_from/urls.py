from django.contrib import admin
# from . import category
from django.urls import path
from . import views as department
from . import views as disease

urlpatterns = [
    path('', department.name_panel,name='home'),
    path('home/', department.dep_name_panel,name='department'),
    path('store/', department.department_name_store,name='department_stor'),
    path('store/edit/<int:id>', department.edit_depart_name,name='edit_depar'),
    path('store/update/', department.update,name='update'),
    path('store/delete/<int:id>', department.delete,name='delete_depart'),
    
    path('di_panel/', disease.disease_panel,name='di_panel'),
    path('sub_store/', disease.disease_sub_store,name='sub_store'),
    
]