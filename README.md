## Especificaciones en general:

* Ruby -v 2.5.3
* Rails -v 5.2.4
* Active_storage
* Modelos de formas de pago.
* 
********************************************************************************************************************************************************************

### Parte Dos:

> Partamos por lo básico
  - Qué es el polimorfismo?
    - El polimorfismo es la capacidad que tienen los objetos de
comportarse de una manera diferente a un método(los métodos
son las funciones que se aplican a los objetos).


*************************************************************************************************************************************************************


### Crearemos la entidad que realice la relación polimórfica:

Y que no sea compleja, es por ello que haremos el polimorfismo de
manera manual.

#### Pero como haremos eso?

Crearemos la columna type(a type le das un objeto del tipo
algo), esta nos permitirá manejar el polimorfismo que nos piden
de manera manual y cumple el mismo funcionamiento, ya que
cuando ingreses el animal en el formulario que cree para ti,
obtendrás la clase que necesitas(perro, gato o vaca)
 
> Al type le das un objeto del tipo algo.
(En la img adjunta de un diagrama, puedes ver la entidad type).
  - Por favor revisar documentación adjunta en el proyecto: app/parteDos/..

> Jugando en la consola de rails(rails c en tu terminal,
recuerda ingresar al proyecto antes):

Vamos a poblar la base de datos...


```
  a = Animalito.create(color: 'brown', type: 'dog', name:
'Carl')
  
  a = Animalito.create(color: 'brown', type: 'cat', name:
'Agustin')

  a = Animalito.create(color: 'black', type: 'dog', name:
'Bimbo')
 
 a = Animalito.create(color: 'white', type: 'cat', name:
'Aurora')
 
 a = Animalito.create(color: 'black & white', type: 'cow',
name: 'Poli')
Y para ver todos los animalitos que haz creado puedes poner
el siguiente comando:
 
 a = Animalito.all
```

### Si realizaste los pasos, debiera verse mas o menos asi en tu consola:

```
2.5.3 :007 > a = Animalito.all
Animalito Load (0.8ms) SELECT "animalitos".* FROM
"animalitos" LIMIT $1 [["LIMIT", 11]]
=> #<ActiveRecord::Relation [#<Animalito id: 1, color:
"black", type: "dog", name: "Bimbo", created_at: "2021-02-28
15:40:51", updated_at: "2021-02-28 15:40:51">, #<Animalito
id: 2, color: "white", type: "cat", name: "Aurora",
created_at: "2021-02-28 15:44:23", updated_at: "2021-02-28
15:44:23">, #<Animalito id: 3, color: "black & white", type:
"cow", name: "Poli", created_at: "2021-02-28 15:45:29",
updated_at: "2021-02-28 15:45:29">, #<Animalito id: 4, color:
"brown", type: "dog", name: "Carl", created_at: "2021-02-28
15:49:20", updated_at: "2021-02-28 15:49:20">, #<Animalito
id: 5, color: "brown", type: "cat", name: "Agustin",
created_at: "2021-02-28 15:49:40", updated_at: "2021-02-28
15:49:40">]>
2.5.3 :010 >
```

### No olvides revisar la documentación adjunta dentro de este proyecto.
