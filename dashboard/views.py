from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required, user_passes_test
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth import login, authenticate, logout

from . import models

# Create your views here.
def LoginView(request):
    if request.method == 'GET':
        return render(request, "Login.html", {
            "form": AuthenticationForm()
        })
    else:
        user = AuthenticationForm(data=request.POST)
        if user.is_valid():
            login(request,user.get_user())
            return redirect("dashboard")
        else:
            return render(request, "Login.html", {
                "form": AuthenticationForm(),
                "message": "Usuario o contraseña incorrectos"
            })

@login_required
def LogoutView(request):
    logout(request)
    return redirect("login")


def is_RRHH(user):
    return user.groups.filter(name='RRHH').exists()


@login_required
def DashboardView(request):
    return render(request, "dashboard.html",{
        "user": request.user
    })
