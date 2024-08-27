from django.db import models

# Create your models here.

from employee.models import employee_model

class contrato_model(models.Model):
    empleado = models.ForeignKey(employee_model, on_delete=models.CASCADE)
    fechaInicio = models.DateField()
    fechaFin = models.DateField()
    salarioDiario = models.DecimalField(max_digits=10, decimal_places=2)
    tipoContrato = models.CharField(max_length=100, choices=[('Determinado', 'Determinado'), ('Indeterminado', 'Indeterminado'), ('Prestacion de servicios','Prestacion de servicios'),('Capacitacion','Capacitacion')])

    def __str__(self):
        return f'Contrato de {self.empleado} con fecha de inicio {self.fechaInicio} y fecha de fin {self.fechaFin}'