from django.db import models

# Create your models here.

from branch import models as branch_models

class sucursal_model(models.Model):
    nombre = models.CharField(max_length=100)
    direccion = models.CharField(max_length=100)
    empresa = models.ForeignKey(branch_models.empresa_model, on_delete=models.CASCADE)

    def __str__(self):
        return self.nombre