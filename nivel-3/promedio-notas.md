# Promedio de notas

Desarrollar una clase llamada Alumno que permita al alumno calcular su promedio de notas finales. Los alumnos están definidos por código de alumno, nombre, apellido, notas: práctica 01, práctica 02, práctica 03, examen parcial y final. Esto da como resultado la nota final del alumno, que es lo que se quiere calcular, según esta fórmula:

PF = Promedio prácticas * 0.2 + Parcial * 0.3 + Final * 0.5

Luego de creada la clase se pide instanciar 3 alumnos y que muestre a cada uno sus promedios.


```ruby
# escribe tu solución acá

alumno = Alumno.new('u811489', 'Ursula','Cervantes', {
    "pc1" => 18,
    "pc2" => 16,
    "pc3" => 19,
    "parcial" => 17,
    "final" => 20,
   })

puts  alumno.promedio

```

[Ver solución](../soluciones/nivel-2/promedio-notas.rb)
