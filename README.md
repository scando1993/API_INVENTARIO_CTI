# sistemaDeInventarioCTI-API
API del sistema de Inventario para el CTI

Instalación CentOS 7:

Habilitar repositorio EPEL:
  $ sudo yum -y install epel-release
  
Instalacion de MySQL:

  $ sudo yum -y install mysql-client mysql-devel
  
  $ sudo mysql_secure_installation
  
  $ mysql -u root -p
  
  $ CREATE DATABASE sistemaInventarioCTI;
  
  $ CREATE USER 'usuario'@'localhost' IDENTIFIED BY 'clave';
  
  $ GRANT ALL ON sistemaInventarioCTI.* TO 'usuario';
  
  $ CREATE USER 'usuarioweb'@'localhost' IDENTIFIED BY 'webclave';
  
  $ GRANT SELECT,INSERT,UPDATE,DELETE ON  sistemaInventarioCTI.* TO 'usuarioweb';
  
  $ exit;
  
Instalacion de Python 3:

  $ sudo yum -y install python34 python34-devel
Instalacion de MySQL:

  $ sudo yum -y install mysql-devel
Instalacio de PIP:

  $ sudo yum -y install python-pip
Instalacion de PIP python 3:

  $ curl -O https://bootstrap.pypa.io/get-pip.py
  $ sudo /usr/bin/python3.4 get-pip.py 
  
Instalacion de virtualenv y virtualenvwrapper:
  $ sudo yum -y install python-virtualenv
  $ sudo yum -y install python-virtualenvwrapper
  $ echo "export WORKON_HOME=~/Env" >> ~/.bashrc
  $ echo "source /usr/bin/virtualenvwrapper.sh" >> ~/.bashrc
  $ source ~/.bashrc
  
Instalar Git:
  $ sudo yum -y install git
  
Instalar GCC:
  $ sudo yum -y install gcc
Clonar repositorio:
  $ git clone https://github.com/cfpena/sistemaDeInventarioCTI-API.git

Crear entorno virtual:
  $ sudo mkvirtualenv sistemaDeInventarioCTI-API/

Instalar Django con python3:
  $ sudo pip3 install django
Instalar conector de MySQL:
  $ sudo pip3 install mysqlclient
  
Instalar Django Rest Framework
  $ sudo pip3 install djangorestframework
  
Configurar Base de datos en django:
  $ cd sistemaDeInventarioCTI-API/
  $ nano sistemaDeInventarioCTI/settings.py
  En la seccion DATABASES:
    DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'sistemaInventarioCTI',
        'USER': 'usuario',
        'PASSWORD': 'clave',
        'HOST': 'localhost',
        'PORT': '3306',
    }
  }
  
Crear tablas en la base de datos:
  
  $ python3 manage.py migrate

Crear un superusuario:
  $ python3 manage.py createsuperuser

Recoger archivos estaticos:
  $ python3 manage.py collectstatics

