from django.urls import path, include

from . import views

urlpatterns = [
    path("", views.indexView, name="homeContract"),
    path("register/", views.newcontractView, name="newContract"),
]