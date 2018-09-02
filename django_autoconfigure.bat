@Echo off
title Django Autoconfigure - By Noah Alorwu!
set /p input=Enter Project name:
@echo on
mkdir %input%
pushd "%input%"
python -m venv myvenv
call myvenv\scripts\activate
@echo off 
echo Done Activating Virtual Environment!
@echo on
pip install --upgrade pip
Rem You can change the django version on the next line
pip install django
@Echo off
set /p input2=Django project name(Eg. mysite):

@echo on
django-admin startproject "%input2%" .
dir

@echo off
echo Yah! You just started a Django Project!
echo Your project directory will open next.
echo Do the necessary configurations!
echo Happy coding!

Timeout /T 5

@echo on
start %input2%































