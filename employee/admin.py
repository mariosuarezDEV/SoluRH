from django.contrib import admin

# Modelos de la app
from .models import employee_model

# Clases para el administrador
class tabla_empleados(admin.ModelAdmin):
    list_display = ('primer_nombre', 'apellido_paterno', 'apellido_materno', 'puesto', 'sucursal')
    search_fields = ('primer_nombre', 'apellido_paterno', 'apellido_materno', 'puesto__nombre', 'sucursal__nombre')
    list_filter = ('puesto', 'sucursal')
# Sitio de administración
admin.site.register(employee_model, tabla_empleados)