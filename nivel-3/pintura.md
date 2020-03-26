# Cuánto pintura necesito?

Se requiere un programa que permita a una empresa constructora determinar la cantidad de pintura que requieren las paredes de un cuarto rectangular. Para ello se tiene el largo, ancho y alto del cuarto y con esos datos se quiere saber cuántos galones de pintura se requieren tomando en cuenta que se pueden pintar 58 metros cuadrados por cada galón. Todas las habitaciones tienen dos ventanas de un metro por un metro y una puerta de un metro de ancho por dos de alto. Tanto ventanas como puertas se deberán descontar de los metros cuadrados a pintar.

```ruby
# escribe tu solución acá

habitacion = Habitacion.new(10,20,16)
puts habitacion.calcularCantidadDePintura

```

[Ver solución](../soluciones/nivel-3/pintura.rb)
