from django.urls import path, include

from . import views

urlpatterns = [
    path("", views.indexView, name="homeIncidents"),
    path("register/", views.newincidentView, name="newIncident"),
    path("validar/<int:incidencia>/", views.marcar_como_revisado, name="marcar_como_revisada"),
    path("esperar/<int:incidencia>/", views.marcar_como_pendiente, name="marcar_como_pendiente"),
    path("autocomplete/nombre/", views.EmpleadoAutocomplete.as_view(), name='empleado-autocomplete'),
    path("autocomplete/tipo/", views.IncidenciaAutocomplete.as_view(), name='tipo-incidencia-autocomplete'),
]
