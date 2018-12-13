# README

Esta es una aplicacion la cual tiene un la funcionalidad de crear tarifa, crear clase de vehiculo  a su vez hacerle ingreso a su placa y ya relaciondolo con su costo muestra los vehiculos con sus items ,muestra su ticket de salida con total de pagar y tiempo tracurrido e informcacion del vehiculo.
* Ruby version
Para poder ejecutar la app se necesita los siguientes pasos:
gem file ruby  version 2.5.3
o si se genera conflicto retirar la version de ruby del gemfile para que  se adapte a tu version de ruby exixtente
* System dependencies
Se requiere:
  gem 'bootstrap', '~> 4.1.3'
  gem 'jquery-rails'
  para mas informacion de intalacion de boostrap https://github.com/twbs/bootstrap-rubygem
  se debe incluir: 
  gem install rack-cors
  Para que funcione en sistemas de alojamiento gratuito heroku etc,porque tiene funcionamiento con ajx y js.
  Hacemos Bundle install
  Siguiente paso rails db:migrate para hacer la miraciones correspondiente de las tablas

  se prende el servidor rails s
  donde  se aloja la app en el local:host3000 
  La aplicacion Consta de 2 formularios :
  1-formulario de creacion de tarifas debes tener cuidado ya que no esta controlado la creacion de vehiculos iguales debes asegurarte no no crear clase de vehiculos que ya existen si no te funciona sin recargar "bug" recarga la pagina y ya debe aparecer la clase de vehiculo en el siguiente formulario.
  2-El formulario de creacion de placas se debe ingresar el formato de  la placa si se trata de iengresar una existente el automaticamnte te l va mostrar en el inde de vehiculos no acepta formatos que no sean el correcto , selccionas el vehiculo y los creas,si no se relaciona en la tabla "bug" recarga la pagina de nuevo y ya debe aparecer.
  
En la lista de placas vas  a ver que la placa esta en formato link el cual tu haces click te muestra lo que contiene el vehiculo placa ,tiempo de ingreso,tiempo recurrente costo por minuto y valor a pagar.
  
APIREST
si deseas hacer perticion por postman:

ENDPOINT POR PETICION GET https://localhost:3000/api/v1/vehicles este te respnde en forma de jason te muestra todos los vehiculos que estan en el parquedero 

ENDPOINT POR PETICION GET https://localhost:3000/api/v1/vehicleseste te respnde en forma de jason te muestra todos las tarirfas y clases de vehiculo creado que estan en el parquedero 

Si deseas ver la respuesta en jason en vista dentro de la app:
utilzas localhost:3000/api/v1/vehicles
utilzas localhost:3000/api/v1/rates
