from django.contrib import admin

# modelos de la app
from .models import incidentModel, typeIncidentModel, incidencias_proxy
from .forms import Registrar_incidencia_gerencia, NewIncidentForm
from django.utils.translation import gettext_lazy as _
# Clases para el administrador

#Sitios de administracion

def marcar_como_resuelto(modeladmin, request, queryset):
    queryset.update(estado=True)
    modeladmin.message_user(request, _("Las incidencias seleccionadas han sido marcadas como resueltas."))

marcar_como_resuelto.short_description = "Marcar como resuelto"

def marcar_como_pendiente(modeladmin, request, queryset):
    queryset.update(estado=False)
    modeladmin.message_user(request, _("Las incidencias seleccionadas han sido marcadas como pendientes."))

marcar_como_pendiente.short_description = "Marcar como pendiente"

@admin.register(incidencias_proxy)
class Incidencia_gerencia(admin.ModelAdmin):
    form = Registrar_incidencia_gerencia
    list_display = ('employee', 'tipo', 'fecha', 'estado')
    search_fields = ('employee__primer_nombre', 'employee__apellido_paterno', 'employee__apellido_materno', 'tipo__name')
    list_filter = ('tipo', 'fecha', 'estado')
    date_hierarchy = 'fecha'

@admin.register(incidentModel)
class IncidenciaAdmin(admin.ModelAdmin):
    form = NewIncidentForm
    list_display = ('employee', 'tipo', 'fecha', 'estado')
    search_fields = ('employee__primer_nombre', 'employee__apellido_paterno', 'employee__apellido_materno', 'tipo__name')
    list_filter = ('tipo', 'fecha', 'estado')
    date_hierarchy = 'fecha'
    actions = [marcar_como_resuelto, marcar_como_pendiente]

admin.site.register(typeIncidentModel)
