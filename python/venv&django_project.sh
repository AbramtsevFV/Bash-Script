#!  /bin/bash

echo 'Вы находитесь в той директории где надо создать проект:
1)  Запускаете  скрипт <путь>/script.sh 
2) Передаём параметры имя проекта/имя директории, версия python, версия Django
Пример:
Test 3.9 3.2
---__-----___---___---
'

read name_project vp vd

mkdir "$PWD/$name_project"
cd "$PWD/$name_project"


python$vp  -m venv venv
source ./venv/bin/activate
pip install django==$vd
django-admin startproject $name_project .

python3 manage.py runserver

