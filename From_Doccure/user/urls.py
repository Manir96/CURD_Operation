from django.contrib import admin
from django.urls import path
from . import views as user
from django.conf.urls.static import static
from django.conf import settings
from .forms import LoginForm, MyPasswordChangeForm, MyPasswordResetForm, MySetPasswordForm
from django.contrib.auth import views as auth_views
from . import views as aut_user



urlpatterns = [  
    path('', user.index_panel,name='index'),
    path('login/', user.login_panel,name='login'),
    path('signup/', user.signup_panel,name='signup'),
    path('signup_store/', user.signup_store_panel,name='signup_store'),
    
    path('accounts/login/',auth_views.LoginView.as_view(template_name='aut_user/login.html', authentication_form=LoginForm) , name='login_l'),
    
    # path('accounts/login/',auth_views.LoginView.as_view(template_name='Shop/login.html', authentication_form=LoginForm) , name='login'),
    
    path('profile/', aut_user.ProfileView.as_view(), name='profile'),
    path('lock_screen/', aut_user.lock_screen,name='lock_screen'),
    path('forgot_password/', aut_user.forgot_password,name='forgot_password'),
    path('settings/', aut_user.serring_profile,name='settings'),
    
    path('registration/', aut_user.aut_user_registerRegistrationView.as_view(), name='register'),
    
    path('passwordchange/', auth_views.PasswordChangeView.as_view(template_name='aut_user/changepassword.html', form_class=MyPasswordChangeForm, success_url='/passwordchangedone/'), name='changepassword'),
    
    path('passwordchangedone/', auth_views.PasswordChangeView.as_view(template_name='aut_user/passwordchangedone.html'), name='passwordchangedone'),
    
    path('password-reset/', auth_views.PasswordResetView.as_view(template_name='aut_user/password_reset.html', form_class=MyPasswordResetForm), name='password-reset'),

    path('password-reset/done/', auth_views.PasswordResetDoneView.as_view(template_name='aut_user/password_reset_done.html'), name='password_reset_done'),


    path('password-reset-complete/', auth_views.PasswordResetCompleteView.as_view(template_name='aut_user/password_reset_complete.html'), name='password_reset_complete'),


    path('password-reset-confirm/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(template_name='aut_user/password_reset_confirm.html', form_class=MySetPasswordForm), name='password_reset_confirm'),
    
    
    path('logout/', auth_views.LogoutView.as_view(next_page='login_l'),name='logout')  
    
    
    
]