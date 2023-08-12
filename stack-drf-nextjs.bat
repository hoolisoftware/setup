@echo off

mkdir stack-drf-nextjs

cd stack-drf-nextjs

virtualenv .venv

call .venv/Scripts/activate

pip install django pillow django-rest-framework

django-admin startproject core
rename core server

wget https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore -O .gitignore

cd ..