#!/bin/sh

# All of the scripts used for the development of the tutorial project


# Creating python virtualenv

virtualenv ~/.cache/.pyvenvs/dj
source ~/.cache/.pyvenvs/dj/bin/activate

# Installing Django
pip install django

# Starting and running wisdompets
django-admin startproject wisdompets 
python3 manage.py runserver 

# creating adoptions
python3 manage.py startapp adoptions

# migrations
python3 manage.py makemigrations
python3 manage.py showmigrations
python3 manage.py migrate


# django admin
python3 manage.py createsuperuser


# Django ORM to query data
python3 manage.py shell
# >> from adoptions.models import Pet
# >> Pet.objects.all()
# >> pet1 = Pet.objects.all()[1]
# >> print([(x.name, x.age for) x in Pet.objects.all()])
# >> print(Pet.objects.get(id=4).name) 

# .get method should not be used with non-unique field

# >> Pet.objects.get(id=7).vaccinations.all()


## Template Syntax
# {{ variable }}
# {% tag %}
# {{ variable|filter }}

