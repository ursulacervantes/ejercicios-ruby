# Comprar llantas

Crear un algoritmo que muestre informacións sobre la compra de llantas.  

Se sabe que el costo de la llanta es 250 soles por unidad

* Si la cantidad de llantas comprados es menor de 12, al precio de las llantas compradas se aplicará un descuento del 20%

* Si el número de llantas compradas es mayor de 12, el precio de llanta se reduce a 220 por unidad y el descuento será de 25%.


```ruby
def comprarLlantas(cantidad)

end

total = comprarLlantas(14)
puts "El total a pagar es #{total}"

total = comprarLlantas(8)
puts "El total a pagar es #{total}"
```

```ruby
$ ruby comprar-llantas.rb
El total a pagar es 770.0
El total a pagar es 400.0
```

[Ver solución](./../../soluciones/fundamentos/condicionales/comprar-llantas.rb)
