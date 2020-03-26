# Calcular la remuneración

Una pequeña empresa requiere un programa que calcule la remuneración final de
sus empleados según algunos datos de entrada.

Cada empleado se registra con su DNI, nombre, cargo, sueldo bruto, las horas
extras trabajadas en el mes y si pertenece a la ONP o está en AFP.

La remuneración final del empleado se calcula restando al sueldo bruto el 13%
si el empleado está en la ONP o 12% si está en AFP.

Además, se descuenta 15% del sueldo bruto por impuesto a la renta.

Tener en cuenta que las horas extras se pagan a un valor de 50 nuevos soles por cada hora.

Cree una clase para Empleado con un método que calcule la remuneración final de un empleado.

Pruebe con al menos 3 empleados.

```ruby
# escribe tu solución acá

empleado = Empleado.new('75023481', 'Anais Rodriguez', 'Diseñador', 8500, 2, 'AFP')
puts empleado.calcularRemuneracion

```


[Ver solución](../soluciones/nivel-3/remuneracion.rb)
