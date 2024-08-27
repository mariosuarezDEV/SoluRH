from django.contrib import admin

# Register your models here.

from .models import incidentModel, typeIncidentModel

admin.site.register(incidentModel)
admin.site.register(typeIncidentModel)