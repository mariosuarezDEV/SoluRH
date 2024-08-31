from django.shortcuts import render
from django.shortcuts import redirect

from django.contrib.auth.decorators import login_required, user_passes_test

# Create your views here.

from .models import employee_model

from .forms import NewEmployeeForm

from company.models import sucursal_model
from positon.models import positionModel
from contract.models import contrato_model
from incident.models import incidentModel


# Solo tienen permiso los usuarios en el grupo RH
def is_rh(user):
    return user.groups.filter(name='RRHH').exists()

@user_passes_test(is_rh, login_url='/')
def EmployeeView(request):
    empleados = employee_model.objects.all()
    return render(request, "Employee.html", {
        'employees': empleados
    })


@user_passes_test(is_rh, login_url='/')
def RegisterEmployeeView(request):
    sucursales = sucursal_model.objects.all()
    puestos = positionModel.objects.all()
    if request.method == 'GET':
        return render(request, "NewEmployee.html", {
            'sucursales': sucursales,
            'puestos': puestos
        })
    else:
        form = NewEmployeeForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('employees')
        else:
            return render(request, "NewEmployee.html", {
                'sucursales': sucursales,
                'puestos': puestos,
                'message': 'Error al registrar el empleado'
            })


@user_passes_test(is_rh, login_url='/')
def EmployeeDetailView(request, id):
    empleado = employee_model.objects.get(id=id)
    # Obtener el tipo de contrato del empleado
    try:
        contrato = contrato_model.objects.get(empleado=empleado)
        # obtener las incidencias del empleado
        incidencias = incidentModel.objects.filter(employee=empleado)
        return render(request, "Profile.html", {
            'empleado': empleado,
            'contrato': contrato,
            'incidencias': incidencias, # Solo se muestan las incidencias si el empleado tiene contratro
            'alert': True
        })
    except contrato_model.DoesNotExist:
        return render(request, "Profile.html", {
            'empleado': empleado,
            'contrato': 'El empleado no tiene contrato registrado, esto podría afectar en el uso del sistema',
            'alert': False
        })
