# Asociación de Canes del Perú

La Asociación de Canes del Perú requiere un programa orientado a objetos para gestionar el Concurso Canino 2020 que tendrá lugar el Parque El Olivar el 15 de Octubre del 2020.     

#### Categorías

En el concurso está dirigido a perros de tres categorías:

* perros de trabajo (pastor alemán, labrador, etc.)
* perros de compañía (pekinés, terrier, etc.)
* perros mestizos (que no son de raza).    

Para todas las categorías se registra el nombre del perro, edad (en meses), color, nombre y apellido del dueño y postura (valor de 1 a 10).   


Por cada categoría se registran además estos datos:   

* Perros de trabajo: Raza y habilidad (valor de 1 a 10).   
* Perros de compañía: Raza y pelaje (valor de 1 a 10).   
* Perros mestizos: Aceptación del público (valor de 1 a 10) y disciplina (valor de 1 a 10).   

#### Calificación

A nivel de todos los perros la calificación se obtiene así:   

`Calificación = postura * 9`   

Además, según la categoría:   

* Perros de trabajo: Se suma a la calificación el valor de habilidad.   
* Perros de compañía: Se suma a la calificación el valor de pelaje.   
* Perros mestizos: Se suma a la calificación el promedio de los valores de aceptación y disciplina.   



### Aplicando herencia y polimorfismo  

* Desarrolle las clases requeridas y sus relaciones en Ruby   

* Desarrolle un método que liste los perros participantes y que informe todos sus atributos y su calificación final. .   

* Desarrolle un método que muestre al ganador general de la competencia y el puntaje obtenido.    

* Desarrollo un método que muestre al ganador de cada categoría y el puntaje final obtenido.  


[Ver solución](../soluciones/nivel-5/asociacion-canes.rb)
