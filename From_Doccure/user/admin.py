from django.contrib import admin

from .models import (
    aut_user_register,
    
)

# Register your models here.
@admin.register(aut_user_register)
class aut_user_registerModelAdmin(admin.ModelAdmin):
    list_display =['id', 'user', 'fname','email', 'mobile','password1']