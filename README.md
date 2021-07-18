# rails-crud-app

Este es un proyecto CRUD utilizando el framework Ruby on Rails.

## Dependencias de este proyecto

Para el desarrollo de este proyecto se utilizaron las siguientes dependencias:

```terminal
$ ruby -v
```
ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux]

```terminal
$ rails -v
```
Rails 5.2.6

```terminal
$ mysql --version
```
mysql  Ver 14.14 Distrib 5.7.28, for Linux (x86_64) using  EditLine wrapper

Nota: En MySQL es necesario crear un usuario con el username mostrado en su terminal, otorgar los permisos correspondientes y agregar una variable de entorno con el nombre 'MYSQL_DEFAULT_PASSWORD' con el valor de la contraseña del user.

## Gemas agregadas en este proyecto

* [devise](https://github.com/heartcombo/devise) utilizado para autenticación de usuarios
* [jquery-rails](https://github.com/rails/jquery-rails) utilizado para trabajar con la librería de Javascript
* [bootstrap (5.0.1)](https://github.com/twbs/bootstrap-rubygem) utilizado para el diseño de la aplicación
* [jquery-validation-rails](https://github.com/meowsus/jquery-validation-rails) utilizado para validar formularios del lado del cliente
* [select2-rails](https://github.com/argerim/select2-rails) utilizado como implementación alterna a los select boxes tradicionales

## Configuración del proyecto

1. Clonar este repositorio, posteriormente instalar todas las dependencias del proyecto con
el siguiente comando:

```terminal
bundle install
```
2. Iniciar el servicio de base de datos de mysql.

```terminal
sudo service mysql start
```

3. Ejecutar todas las migraciones pendientes.

```terminal
rails db:migrate
```

4. Iniciar el servidor.

```terminal
rails s
```