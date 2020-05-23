# Descuento de motocicletas

Una distribuidora de motocicletas tiene una promoción de medio año que consiste en lo siguiente. 

* Las motos marca Honda tienen un descuento del 5%
* Las marcas Yamaha del 8% y las Suzuki del 10%
* Las otras marcas 2%. 

Se debe mostrar el precio de la moto, el descuento y el precio a pagar.

```ruby
def calcularDescuento(moto, precio)

end

precio = 120
moto = "Yamaha"
descuento = calcularDescuento(moto, precio)
total = precio - descuento

puts "Precio #{precio}"
puts "Descuento #{descuento}"
puts "Total a pagar #{total}"
```

```ruby
$ ruby descuento-motocicletas.rb
Precio 120
Descuento 12
Total a pagar 108
```

[Ver solución](./../../soluciones/fundamentos/condicionales/descuento-motocicletas.rb)
