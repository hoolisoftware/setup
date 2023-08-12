@echo off

if exist stack-drf-nextjs rmdir /S stack-drf-nextjs

mkdir stack-drf-nextjs
cd stack-drf-nextjs

@REM server setup

mkdir server && cd server

virtualenv .venv && call .venv/Scripts/activate
pip install django==4.2 pillow==10.0.0 django-rest-framework==0.1.0
wget https://raw.githubusercontent.com/hoolisoftware/setup/master/python-django-drf.gitignore -O .gitignore

django-admin startproject core
rename core src
cd src
python manage.py migrate
python manage.py createsuperuser --no-input --username admin --email admin@admin.com
echo DJANGO_SUPERUSER_PASSWORD='admin' >> core/settings.py
cd ..

cd ..

@REM client setup

npx create-next-app@13.4.12 client --use-yarn --ts --example "https://github.com/vercel/next-learn/tree/master/basics/learn-starter"

wget https://raw.githubusercontent.com/hoolisoftware/setup/master/stack-drf-nextjs.code-workspace -O vscode.code-workspace 