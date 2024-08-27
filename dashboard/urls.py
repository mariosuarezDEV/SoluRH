from django.urls import path, include

from . import views

urlpatterns=[
    path("", views.DashboardView, name="dashboard"),
    path("login/", views.LoginView, name="login"),
    path("logout/", views.LogoutView, name="logout"),
    path("contracts/", include("contract.urls")),
    path("incidents/", include("incident.urls")),
    path("employees/", include("employee.urls"), name="employees"),
]