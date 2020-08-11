from django.shortcuts import render
from django.http import HttpResponse

from .models import Pet


def home(request):
    return HttpResponse('<h1>Welcome home!</h1>')


def pet_detail(request, pet_id):
    return HttpResponse(f'<p>Pet id: </p><h1 style:"color:red">{pet_id}</h1>')
