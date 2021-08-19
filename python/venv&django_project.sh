#!  /bin/bash

echo 'Находитесь в той дериктории где надо создать проект:
1)  выполняете скрипт <путь>/script.sh 
2) Передаём параметры имя проекта, версия python, версия Django
Пример:
Test 3.9 3.2
---__-----___---
'

read name_project vp vd

mkdir "$PWD/$name_project"
cd "$PWD/$name_project"


python$vp  -m venv venv
source ./venv/bin/activate
pip install django==$vd
django-admin startproject $name_project .

python3 manage.py runserver

