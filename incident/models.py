from django.db import models

# Create your models here.

from employee.models import employee_model


class typeIncidentModel(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=200, blank=True, null=True)
    deduccion = models.BooleanField(default=True)

    class Meta:
        verbose_name = 'Tipo de Incidencia'
        verbose_name_plural = 'Tipos de Incidencias'

    def __str__(self):
        return self.name


class incidentModel(models.Model):
    employee = models.ForeignKey(employee_model, on_delete=models.CASCADE)
    tipo = models.ForeignKey(typeIncidentModel, on_delete=models.CASCADE)
    fecha = models.DateField()
    estado = models.BooleanField(default=False)

    class Meta:
        verbose_name = 'Incidencia'
        verbose_name_plural = 'Incidencias'

    def __str__(self):
        return f'{self.employee} {self.tipo}'

class incidencias_proxy(incidentModel):
    class Meta:
        proxy = True
        verbose_name = 'Registrar Incidencia'
        verbose_name_plural = 'Registrar Incidencias'