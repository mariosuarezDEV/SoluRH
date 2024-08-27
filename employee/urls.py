from django.urls import path,include

from . import views

urlpatterns=[
    path("",views.EmployeeView, name="employees"),
    path("register/",views.RegisterEmployeeView, name="register"),
    path("detail/<int:id>",views.EmployeeDetailView, name="detail")
]