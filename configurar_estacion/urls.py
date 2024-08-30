from django.urls import path, include

from . import views

urlpatterns = [
    path("", views.abrir_panel_configuracion, name="panelConfiguracion"),
]