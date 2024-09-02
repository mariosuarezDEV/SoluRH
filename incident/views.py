from django.shortcuts import render, redirect, HttpResponseRedirect
from dal import autocomplete
from employee.models import employee_model
from django.contrib.auth.decorators import login_required, user_passes_test
from .models import typeIncidentModel

# Create your views here.

from .models import incidentModel

# Solo tienen permiso los usuarios en el grupo RH y Gerencia
def permisos(user):
    return user.groups.filter(name__in=['RRHH', 'Gerencia']).exists()

from .forms import NewIncidentForm, NewTypeIncidentForm

@user_passes_test(permisos, login_url='/')
def indexView(request):
    return render(request, 'IncidentsIndex.html')


@user_passes_test(permisos, login_url='/')
def newincidentView(request):
    if request.method == 'GET':
        return render(request, 'NewIncident.html',{
            'form': NewIncidentForm()
        })
    else:
        form = NewIncidentForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('homeIncidents')
        else:
            return render(request, 'NewIncident.html',{
                'form': NewIncidentForm(),
                'message': 'Error al registrar el incidente'
            })

@user_passes_test(permisos, login_url='/')
def marcar_como_revisado(request,incidencia):
    incident = incidentModel.objects.get(id=incidencia)
    incident.estado = True
    incident.save()
    #Regresar a la pagina anterior
    url_antes = request.META.get('HTTP_REFERER')
    return HttpResponseRedirect(url_antes)

@user_passes_test(permisos, login_url='/')
def marcar_como_pendiente(request,incidencia):
    incident = incidentModel.objects.get(id=incidencia)
    incident.estado = False
    incident.save()
    #Regresar a la pagina anterior
    url_antes = request.META.get('HTTP_REFERER')
    return HttpResponseRedirect(url_antes)

class EmpleadoAutocomplete(autocomplete.Select2QuerySetView):
    def get_queryset(self):
        if not self.request.user.is_authenticated:
            return employee_model.objects.none()

        qs = employee_model.objects.all()

        if self.q:
            qs = qs.filter(primer_nombre__icontains=self.q) | qs.filter(apellido_paterno__icontains=self.q)

        return qs

class IncidenciaAutocomplete(autocomplete.Select2QuerySetView):
    def get_queryset(self):
        if not self.request.user.is_authenticated:
            return typeIncidentModel.objects.none()

        qs = typeIncidentModel.objects.all()

        if self.q:
            qs = qs.filter(name__icontains=self.q) | qs.filter(description__icontains=self.q)

        return qs