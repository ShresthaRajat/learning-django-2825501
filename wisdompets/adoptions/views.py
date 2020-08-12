from .models import Pet
from django.http import HttpResponse
from django.shortcuts import render


def home(request):
    pets = Pet.objects.all()
    return render(request, 'home.html', {
        'pets': pets,
    })
    # return HttpResponse('<h1>Welcome home!</h1>')


def pet_detail(request, pet_id):
    try:
        pet = Pet.objects.get(id=pet_id)
        #return HttpResponse(f'<p>Pet id: </p><h1 style:"color:red">{pet_id}</h1>')
    except Pet.DoesNotExist:
        raise Http404('Pet Not Found')
    return render(request, 'pet_detail.html', {
        'pet': pet,
    })
