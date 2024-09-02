from django.db import models

# Create your models here.

from company.models import sucursal_model


class positionModel(models.Model):
    nombre = models.CharField(max_length=100)

    class Meta:
        verbose_name = 'Puesto'
        verbose_name_plural = 'Puestos'

    def __str__(self):
        return f'{self.nombre}'
