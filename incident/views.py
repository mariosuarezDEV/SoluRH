from django.shortcuts import render, redirect

from django.contrib.auth.decorators import login_required, user_passes_test

# Create your views here.

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