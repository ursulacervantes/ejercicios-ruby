# Comprar un helado

Escribe un programa que permita comprar un helado y calcular cuánto le costará en función del topping que elija.

* El helado sin topping cuesta 1.90€.
* El topping de oreo cuesta 1€.
* El topping de KitKat cuesta 1.50€.
* El topping de brownie cuesta 0.75€.
* El topping de lacasitos cuesta 0.95€.

En caso de no disponer del topping solicitado, el programa mostrará el mensaje «No tenemos este topping, lo sentimos. » y a continuación informará del precio del helado sin ningún topping.


```ruby
def precioHelado(topping)

end

precio = precioHelado("oreo")
puts "El precio es: #{precio}"

precio = precioHelado("chocolate")
puts "El precio es: #{precio}"
```

```ruby
$ ruby comprar-helado.rb
El precio es: 2.9€

No tenemos este topping, lo sentimos.
El precio es: 1.9€
```

[Ver solución](./../../soluciones/fundamentos/condicionales/comprar-helado.rb)
