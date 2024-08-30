from django.urls import path, include

from . import views

urlpatterns = [
    path("", views.indexView, name="homeIncidents"),
    path("register/", views.newincidentView, name="newIncident"),
    path("validar/<int:incidencia>/", views.marcar_como_revisado, name="marcar_como_revisada"),
    path("esperar/<int:incidencia>/", views.marcar_como_pendiente, name="marcar_como_pendiente"),
]
