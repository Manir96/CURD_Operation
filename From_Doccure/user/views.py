from django.shortcuts import render,redirect,HttpResponse
from . models import user_Registration
from . import models 
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,login

# from django.contrib.auth.forms import UserCreationForm, AuthenticationForm, UsernameField, PasswordChangeForm, PasswordResetForm, SetPasswordForm
# from django import forms
# from django.utils.translation import gettext, gettext_lazy as _


# Create your views here.

def index_panel(request):
    return render(request,'user/index.html')


def login_panel(request):
    
    # Mobile = request.POST.get('mobile')
    # Password = request.POST.get('password')
    # login_model = user_Registration.objects.all()
           
    return render(request,'user/login.html')

def signup_panel(request):
    user_data = user_Registration.objects.all()
    context = {"signup_data":user_data}
    return render(request,'user/signup.html',context)

def signup_store_panel(request):
    Full_Name = request.POST.get('name')
    Email = request.POST.get('email')
    Mobile = request.POST.get('mobile')
    Password = request.POST.get('pass')
    Confirm_Password = request.POST.get('con_pass')
    register_model = models.user_Registration()
    register_model.Full_Name = Full_Name
    register_model.Email = Email
    register_model.Mobile = Mobile
    register_model.Password = Password
    register_model.Confirm_Password = Confirm_Password
    register_model.save()
    return redirect('login')





# def login_panel(request):
#     if request.method=='POST':
#         Mobile = request.POST.get('mobile')
#         Password = request.POST.get('password')
#         # login_model = user_Registration.objects.all()
#         # use_model = User.objects.create_user()
#         user = authenticate(request,mobile=Mobile,password=Password)
#         if user is not None:
#             login(request,user)
#             return redirect('department')
#         else:
#             return HttpResponse("Your Mobile and Passowrd incorrect")
        
#     return render(request,'user/login.html')

# def signup_panel(request):
#     # user_data = User.objects.create_user()
#     # context = {"signup_data":user_data}
#     return render(request,'user/signup.html')

# def signup_store_panel(request):
#     if request.method=='POST':
#         Full_Name = request.POST.get('name')
#         Email = request.POST.get('email')
#         Mobile = request.POST.get('mobile')
#         Password = request.POST.get('pass')
#         Confirm_Password = request.POST.get('con_pass')
#         #register_model = user_Registration.objects.all()
#         if Password!=Confirm_Password:
#             return HttpResponse("Your Passowrd and Confirm_Passowrd not Match")
#         else:
#             user_model = User.objects.create_user(Full_Name,Email,Mobile)
#             user_model.save()
            
#             return redirect('login')

#     return render(request,'user/signup.html')



