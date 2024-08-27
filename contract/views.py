from django.shortcuts import render
from django.shortcuts import redirect

from django.contrib.auth.decorators import login_required, user_passes_test, permission_required

# Create your views here.

from . import models
from . import forms


# Solo tienen permiso los usuarios en el grupo RH
def is_rh(user):
    return user.groups.filter(name='RRHH').exists()

@user_passes_test(is_rh, login_url='/')
def indexView(request):
    return render(request, 'Index.html')

@user_passes_test(is_rh, login_url='/')
def newcontractView(request):
    if request.method == 'GET':
        return render(request, 'NewContract.html',{
            'form': forms.NewContractForm()
        })
    else:
        form = forms.NewContractForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('employees')
        else:
            return render(request, 'NewContract.html',{
                'form': form,
                'message': 'Error al registrar el contrato'
            })