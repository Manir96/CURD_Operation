from django.contrib import admin
from django.urls import path
from . import views as user


urlpatterns = [  
    path('', user.index_panel,name='index'),
    path('login/', user.login_panel,name='login'),
    path('signup/', user.signup_panel,name='signup'),
    # path('index_store/', user.index_store,name='index_store'),
    
]