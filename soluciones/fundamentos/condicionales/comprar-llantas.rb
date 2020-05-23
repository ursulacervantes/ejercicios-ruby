def comprarLlantas(cantidad)
    total = 0

    if(cantidad < 12)
        total = cantidad * 250 * 0.20
    else
        total = cantidad * 220 * 0.25
    end
    
    return total
end

total = comprarLlantas(14)
puts "El total a pagar es #{total}"

total = comprarLlantas(8)
puts "El total a pagar es #{total}"