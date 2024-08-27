from django.contrib import admin

# Register your models here.

from .models import empresa_model

admin.site.register(empresa_model)