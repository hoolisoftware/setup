@echo off

virtualenv .venv

call .venv/Scripts/activate

pip install django pillow django-rest-framework

django-admin startproject core
rename core server

wget https://raw.githubusercontent.com/hoolisoftware/setup/master/python-django-drf.gitignore -O .gitignore