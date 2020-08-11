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

