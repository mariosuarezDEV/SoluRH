from django import forms

from django.forms import ModelForm

from .models import incidentModel, typeIncidentModel

class NewIncidentForm(ModelForm):
    class Meta:
        model = incidentModel
        fields = ['employee', 'tipo', 'fecha']
        widgets = {
            'fecha': forms.DateInput(attrs={'type': 'date'}),
        }

class NewTypeIncidentForm(ModelForm):
    class Meta:
        model = typeIncidentModel
        fields = '__all__'