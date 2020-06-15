# Torneo de Karate

La Asociación de Peruana de KARATE requiere de un programa orientado a objetos para controlar los resultados del torneo nacional 2020 que organizará en octubre.  

Cada participante es registrado tiene los siguientes datos: código, nombre, edad, dni, color de cinturón, partidas ganadas, partidas empatadas y partidas perdidas. 

 Cada equipo registrado tiene los siguientes datos: código, nombre, puntaje total, participantes.

El puntaje se calcula de esta forma: 


Puntaje = (partidas ganadas) * 4 + (partidas empatadas) * 3


Desarrolle las clases necesarias y sus relaciones. **Registre 6 equipos**. 

* a) Desarrolle un método que permita buscar un participante del torneo por dni, y que devuelva los datos del mismo incluido su puntaje final. En caso no se encuentre el equipo debe indicar “Participante no encontrado”. 
* b) Desarrolle un método que permita obtener el participante campeón del torneo. 
* c) Desarrolle  un método que genere un listado ordenado por puntaje de los participantes del torneo, es decir la tabla de posiciones. 
* d) Desarrolle un método que reciba un número de dni y un número, tal que permita modificar el número de partidas ganadas. Pruebe que haya realizado el cambio llamando al método del punto 1.
* e) Desarrolle un método que liste a los equipos del torneo y que además muestre el puntaje total obtenido por todos sus participantes.

[Ver solución](../soluciones/nivel-4/torneo-karate.rb)
