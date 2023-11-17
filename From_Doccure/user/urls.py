from django.contrib import admin
from django.urls import path
from . import views as user
# from .forms import LoginForm
# from django.contrib.auth import views as auth_views



urlpatterns = [  
    path('', user.index_panel,name='index'),
    path('login/', user.login_panel,name='login'),
    path('signup/', user.signup_panel,name='signup'),
    path('signup_store/', user.signup_store_panel,name='signup_store'),
    
    
    
]