#/Applications/Utilities/terminal.app
my_dir="blank"
venv_dir="blank"
clear
function django_menu {
	echo -e "Enter the name of your django project: "
	read -p "" project_input
	echo -e ""
	source $venv_dir
	# source ~/Desktop/Coding/djangoEnv/bin/activate
	cd $my_dir
	django-admin startproject $project_input
	cd $project_input
	mkdir apps
	cd apps
	touch __init__.py
	echo -e "Project folder created. Enter app name: "
	read -p "" app_input
	echo -e ""
	python ../manage.py startapp $app_input
	cd ../$project_input
	printf "from django.conf.urls import url, include \nurlpatterns = [\n\turl(r'^', include('apps.$app_input.urls'))\n
]" > urls.py
	echo -e "Please add 'apps.$app_input' to the list of INSTALLED APPS in $app_input directory. Press any key to continue"
	read -n1 -p ""
	# if you want to automatically open the directory in, say atom:
	# atom $my_dir/$project_input
	# sublime $my_dir/$project_input
	cd ../apps
	printf "from django.conf.urls import url\nfrom . import views\nurlpatterns = [\n\turl(r'^$', views.index)\n]" > $app_input/urls.py
	printf "#  Inside apps/first_app/views.py\nfrom django.shortcuts import render, HttpResponse\n# Create your views here.\ndef index(request):\n\treturn render(request, '$app_input/index.html')" > $app_input/views.py
	cd $app_input
	mkdir templates
	cd templates
	mkdir $app_input
	printf "<h1>Is this easy mode?</h1>" > $app_input/index.html
	cd ../../..
	python manage.py makemigrations
	python manage.py migrate
	python manage.py runserver
}
clear
if [ $my_dir = "blank" ] || [ $my_dir = "blank" ]  ; then
	echo -e "You haven't set this up yet! Look at the README"
else
	django_menu
fi