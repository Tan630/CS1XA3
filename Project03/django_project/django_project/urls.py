from django.urls import path, include, re_path
from django.contrib.auth import login, authenticate
from django.contrib.auth.forms import UserCreationForm
from .templates.forms import SignUpForm
from django.shortcuts import render, redirect
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
admin.autodiscover()
# Allows admin

# Wasn't able to import these functions from other modules, had to leave it here for now...
def signup(request):
    if request.method == 'POST':
        # If form is good, save sign-up application as user
        form = SignUpForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            raw_password = form.cleaned_data.get('password1')
            user = authenticate(username=username, password=raw_password)
            login(request, user)
            return redirect('/igallery/')
    else:
        form = SignUpForm()
        # If form is invalid, generate a new SignUpForm, then unpack it in signup.html
    return render(request, 'registration/signup.html', {'form': form})

def request_main(request):
    return render(request, 'main/main_view.html')

urlpatterns = [
    re_path(r'^e/liy443/', include('django_project.urlss'), name='reroute'), #  request_main, name="index"),
]  + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) # Static URLs Enabled

"""django_project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""




