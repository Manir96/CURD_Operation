from django.shortcuts import render

# Create your views here.

def index_panel(request):
    return render(request,'user/index.html')
def login_panel(request):
    return render(request,'user/login.html')
def signup_panel(request):
    return render(request,'user/signup.html')
