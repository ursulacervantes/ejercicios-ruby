def precioHelado(topping)
    precioBase = 1.90
    precioTopping = 0

    if topping == "oreo"
        precioTopping = 1
    elsif topping == 'kitkat'
        precioTopping = 1.50
    elsif topping == 'brownie'
        precioTopping = 0.75
    elsif topping == 'lacasitos'
        precioTopping = 0.95
    else
        precioTopping = 0
    end

    precioTotal = precioBase + precioTopping
    return precioTotal
end

precio = precioHelado("oreo")
puts "El precio es: #{precio}€"

precio = precioHelado("chocolate")
puts "El precio es: #{precio}€"