# Especificaciones en general:

* Ruby -v 2.5.3
* Rails -v 5.2.4
* Active_storage
* Modelos de formas de pago.

# Parte Dos:

* Partamos por lo básico
* Qué es el polimorfismo?
El polimorfismo es la capacidad que tienen los objetos de
comportarse de una manera diferente a un método(los métodos
son las funciones que se aplican a los objetos).

# Crearemos la entidad que realice la relación polimórfica:
* Y que
no sea compleja, es por ello que haremos el polimorfismo de
manera manual.

# Pero como haremos eso?
Crearemos la columna type(a type le das un objeto del tipo
algo), esta nos permitirá manejar el polimorfismo que nos piden
de manera manual y cumple el mismo funcionamiento, ya que
cuando ingreses el animal en el formulario que cree para ti,
obtendrás la clase que necesitas(perro, gato o vaca)
* Al type le das un objeto del tipo algo.
(En la img adjunta de un diagrama, puedes ver la entidad type).
* Por favor revisar documentación adjunta en el proyecto: app/parteDos/..

* Jugando en la consola de rails(rails c en tu terminal,
recuerda ingresar al proyecto antes):
Vamos a poblar la base de datos...

1. a = Animalito.create(color: 'brown', type: 'dog', name:
'Carl')
2. a = Animalito.create(color: 'brown', type: 'cat', name:
'Agustin')
