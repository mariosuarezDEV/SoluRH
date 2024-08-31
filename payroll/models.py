from django.db import models

# Create your models here.

from employee.models import employee_model

class modelo_nomina(models.Model):
    empleado = models.ForeignKey(employee_model, on_delete=models.CASCADE)
    fecha_pago = models.DateField()
    ajuste_incidencias_deduccion = models.DecimalField(max_digits=10, decimal_places=2)
    ajuste_incidencias_aumento = models.DecimalField(max_digits=10, decimal_places=2)
    salario_subtotal = models.DecimalField(max_digits=10, decimal_places=2)
    salario_total = models.DecimalField(max_digits=10, decimal_places=2)

    def __str__(self):
        return f'Nomina de {self.empleado} con fecha de pago {self.fecha_pago} fue de {self.salario_total}'
