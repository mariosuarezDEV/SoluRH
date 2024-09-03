from django import forms
from dal import autocomplete
from django.forms import ModelForm

from .models import incidentModel, typeIncidentModel
from employee.models import employee_model as Empleado

class Registrar_incidencia_gerencia(ModelForm):
    employee = forms.ModelChoiceField(
        queryset=Empleado.objects.all(),
        widget=autocomplete.ModelSelect2(url='empleado-autocomplete')
    )
    tipo = forms.ModelChoiceField(
        queryset=typeIncidentModel.objects.all(),
        widget=autocomplete.ModelSelect2(url='tipo-incidencia-autocomplete')
    )

    class Meta:
        model = incidentModel
        fields = ['employee', 'tipo', 'fecha']
        widgets = {
            'fecha': forms.DateInput(attrs={'type': 'date'}),
        }

class NewIncidentForm(ModelForm):
    employee = forms.ModelChoiceField(
        queryset=Empleado.objects.all(),
        widget=autocomplete.ModelSelect2(url='empleado-autocomplete')
    )
    tipo = forms.ModelChoiceField(
        queryset=typeIncidentModel.objects.all(),
        widget=autocomplete.ModelSelect2(url='tipo-incidencia-autocomplete')
    )
    class Meta:
        model = incidentModel
        fields = ['employee', 'tipo', 'fecha', 'estado']
        widgets = {
            'fecha': forms.DateInput(attrs={'type': 'date'}),
        }

class NewTypeIncidentForm(ModelForm):
    class Meta:
        model = typeIncidentModel
        fields = '__all__'