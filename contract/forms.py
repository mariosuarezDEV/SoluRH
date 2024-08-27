from django import forms

from django.forms import ModelForm

from .models import contrato_model

class NewContractForm(ModelForm):
    class Meta:
        model = contrato_model
        fields = '__all__'
