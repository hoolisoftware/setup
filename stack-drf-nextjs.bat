@echo off

mkdir stack-drf-nextjs

cd stack-drf-nextjs

virtualenv .venv

call .venv/Scripts/activate

pip install django==4.2 pillow==10.0.0 django-rest-framework==0.1.0

django-admin startproject core
rename core server

wget https://raw.githubusercontent.com/hoolisoftware/setup/master/python-django-drf.gitignore -O .gitignore

cd ..

mkdir client

cd client

npx create-next-app@13.4.12 . --use-yarn --ts --example "https://github.com/vercel/next-learn/tree/master/basics/learn-starter"

..

