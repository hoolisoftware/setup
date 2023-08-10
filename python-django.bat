@echo off

virtualenv .venv

call .venv/Scripts/activate

pip install django pillow

django-admin startproject core
rename core server

wget https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore -O .gitignore