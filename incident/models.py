from django.db import models

# Create your models here.

from employee.models import employee_model


class typeIncidentModel(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=200)
    deduccion = models.BooleanField(default=True)

    def __str__(self):
        return self.name


class incidentModel(models.Model):
    employee = models.ForeignKey(employee_model, on_delete=models.CASCADE)
    tipo = models.ForeignKey(typeIncidentModel, on_delete=models.CASCADE)
    fecha = models.DateField()
    estado = models.BooleanField(default=False)

    def __str__(self):
        return f'{self.employee} {self.tipo}'
