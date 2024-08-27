from django.forms import ModelForm
from django import forms

from . import models

class NewEmployeeForm(ModelForm):
    class Meta:
        model = models.employee_model
        # todos los campos
        fields = '__all__'