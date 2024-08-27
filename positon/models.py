from django.db import models

# Create your models here.

from company.models import sucursal_model


class positionModel(models.Model):
    nombre = models.CharField(max_length=100)

    def __str__(self):
        return f'{self.nombre}'
