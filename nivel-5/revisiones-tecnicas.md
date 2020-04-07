# Revisiones Técnicas Vehiculares

El Centro de Revisiones Técnicas Vehiculares “Global Trans” requiere un programa orientado a objetos para gestionar los datos de los vehículos que pasan por la revisión técnica en su taller y para el cálculo del puntaje requerido así como los pagos recibidos.


#### Tipo de vehículo

Todos los vehículos son identificados por:

* número de placa
* marca
* modelo
* año de fabricación
* tipo de motor (diesel o gasolina)


#### Calificación

Asimismo los vehículos pueden obtener una calificación de 0 a 4 en sistema de dirección (sd), sistema de frenos (sf), emisión de gases (eg) y emisiones sonoras (es). La calificación general se calcula sumando estos valores:


`Calificación general = sd + sf + eg+ es`


#### Clasificación de vehículos

Los vehículos se clasifican en:

* Motos:   Tarifa de revisión 25 soles.
* Ligeros: Tarifa de revisión 80 soles.
* Pesados: Tarifa de revisión 120 soles.



En el caso de las motos se revisa adicionalmente el nivel de vibración (nv).
Para los vehículos ligeros se revisa también el sistema de luces (sl). Y para el caso de los vehículos pesados el sistema de suspensión (ss).

**En cada caso la calificación va de 0 a 4 y se suma a la calificación general.**



Para que un vehículo se considere aprobado debe obtener una calificación de 14 a más. Si la calificación es 12 o 13 se considera observado. Y si es menor es desaprobado.



### Aplicando herencia y polimorfismo


* Desarrolle las clases requeridas y sus relaciones en Ruby


* Desarrolle un método que liste los vehículos que han pasado por revisión técnica y que informe todos sus atributos, tarifa pagada y su calificación final.


* Desarrolle un método que solicite el número de placa y muestre los datos del vehículo, la tarifa pagada, el puntaje obtenido y su estado final (aprobado, observado o desaprobado).


* Desarrolle un método que muestre el total recaudado por todas las revisiones realizadas por la empresa.

[Ver solución](../soluciones/nivel-5/revisiones-tecnicas.rb)
