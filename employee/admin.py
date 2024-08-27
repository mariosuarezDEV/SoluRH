from django.contrib import admin

# Register your models here.

from .models import employee_model

admin.site.register(employee_model)