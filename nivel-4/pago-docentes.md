# Calcular el pago mensual de docentes

Una reconocida Universidad INNVONATE requiere un programa que le permita calcular el pago mensual de la planilla de sus docentes. Para el cálculo se debe tener en cuenta que la tarifa por hora trabajada va de acuerdo con el grado de instrucción de docente.  

Se debe considerar la siguiente información:  

Para docente: dni, nombre, apellido, grado, antigüedad, horastrabajadas, y minutostardanza

Para el desarrollo se debe considerar las siguientes reglas de negocio:


Las tarifas y el porcentaje son los indicados en el siguiente cuadro.


| Grado de Instrucción | Tarifa x hora  |
| ------------- | -----:|
| Bachiller     | S/. 40  |
| Titulado      | S/. 80 |
| Maestría      | S/. 100  |
| Doctorado     | S/. 180  |


Además, considere que la Universidad INNVONATE aplicará un % de aumento por en función a la antigüedad de años.


| Años de antigüedad | % de aumento  |
| ------------- | -----:|
| Más de 15 años     | 10% |
| Entre 11 y 15 años      | 7% |
| Entre 7 y 10 años      | 5%  |
| Entre 4 y 6 años     | 4%  |
| Menos de 4 años     | 3%  |


Además, se aplica un bono por puntualidad en la asistencia a las sesiones de clase. El bono se aplica cumpliendo las siguientes condiciones:



| Minutos de tardanza  | Bono  |
| ------------- |-----:|
| 0 minutos             | S/. 120 |
| Entre 1 y 5 minutos   |   S/. 80 |
| Entre 6 y 10 minutos  |    S/. 40 |
| Entre 11 y 15 minutos |    S/. 0 |
| Más de 16 minutos     |    S/. -40 |


Desarrollar el programa orientado a objetos que permita determinar lo siguiente:


* Liste los docentes, muestre todos sus datos y su respectivo sueldo
* Liste los docentes en un determinado grado, muestre todos sus datos y su respectivo sueldo
* Muestre el monto que se paga por grado de docente
* Listado los montos que se paga en los cuatro grados de los docentes

[Ver solución](../soluciones/nivel-4/pago-docentes.rb)
