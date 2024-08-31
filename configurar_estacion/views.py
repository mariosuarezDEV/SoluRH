from django.shortcuts import render

# Create your views here.

from company.models import sucursal_model

def abrir_panel_configuracion(request):
    #Obtener todas las sucursales
    sucursales = sucursal_model.objects.all()
    if request.method == 'GET':
        return render(request, "ConfiPane.html", {
            'sucursales': sucursales
        })
    else:
        pass