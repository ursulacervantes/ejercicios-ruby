# Alumnos aprobados

Se requiere una aplicación que permita crear alumnos en un instituto de inglés y permita determinar si es que han pasado el nivel o no. Los alumnos tienen, además de su código y nombre, dos valores que son las pruebas llamadas T1 y T2. En caso tengan 85 puntos en ambas pruebas el alumno está en aprobado. En caso solamente tenga una de las dos pruebas con 85 o más puntos entonces está como observado. Si es que ninguna de las dos tiene 85 puntos entonces está reprobado. Modelar y códificar la clase que permita realizar lo solicitado.  

```ruby
# escribe tu solución acá

alumna1 = Alumno.new('u811489', 'Ursula Cervantes', 85, 85)
puts alumno1.getStatus
# Alumno Ursula Cervantes con códifo u811489 está aprobado.

alumna1 = Alumno.new('u866409', 'Angel Perez', 15, 85)
puts alumno1.getStatus
# Alumno Angel Perez con código u866409 está observado.

alumna1 = Alumno.new('u823097', 'Luis Prado', 25, 65)
puts alumno1.getStatus
#Alumno Luis Prado con código u823097 está reprobado.
```

[Ver solución](../soluciones/nivel-3/alumsno-aprobados.rb)
