from django.db import models

# Create your models here.

from positon.models import positionModel
from company.models import sucursal_model


class employee_model(models.Model):
    # Datos personales
    primer_nombre = models.CharField(max_length=100)  #ya
    segundo_nombre = models.CharField(max_length=100, null=True, blank=True)  #ya
    apellido_paterno = models.CharField(max_length=100)  #ya
    apellido_materno = models.CharField(max_length=100)  #ya

    fecha_nacimiento = models.DateField()  #ya
    genero = models.CharField(max_length=100, choices=[('Masculino', 'Masculino'), ('Femenino', 'Femenino')])  #ya
    nacionalidad = models.CharField(max_length=100, default='Mexicana', null=True, blank=True)  #ya
    estado_civil = models.CharField(max_length=100,
                                   choices=[('Soltero', 'Soltero'), ('Casado', 'Casado'), ('Divorsiado', 'Divorciado'),
                                            ('Viudo', 'Viudo')])  #ya

    # Datos de empledo
    puesto = models.ForeignKey(positionModel, on_delete=models.CASCADE)  #ya
    sucursal = models.ForeignKey(sucursal_model, on_delete=models.CASCADE)  #ya

    # Dirección
    calle = models.CharField(max_length=100)  #ya
    colonia = models.CharField(max_length=100)  #ya
    numero = models.CharField(max_length=100)  #ya
    cp = models.CharField(max_length=100)  #ya
    ciudad = models.CharField(max_length=100)  #ya
    estado = models.CharField(max_length=100)  #ya
    pais = models.CharField(max_length=100, default='México', null=True, blank=True)  # ya

    class Meta:
        verbose_name = 'Empleado'
        verbose_name_plural = 'Empleados'

    def __str__(self):
        return f'{self.primer_nombre} {self.segundo_nombre} {self.apellido_paterno} {self.apellido_materno}'
