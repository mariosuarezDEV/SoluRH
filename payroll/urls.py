from django.urls import path, include

from . import views

urlpatterns = [
    path("generar_nomina/<int:empleado>/", views.generar_nomina, name="GenerarNomina"),
]
