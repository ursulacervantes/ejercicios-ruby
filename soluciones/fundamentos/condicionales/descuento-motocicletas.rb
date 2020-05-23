def calcularDescuento(moto, precio)
    porcentaje = 0

    if moto == "Honda"
        porcentaje = 0.05
    elsif moto == "Yamaha" || moto == " Suzuki"
        porcentaje = 0.08 
    else 
        porcentaje = 0.02
    end

    descuento = precio * porcentaje
    return descuento
end

precio = 120
moto = "Yamaha"
descuento = calcularDescuento(moto, precio)
total = precio - descuento

puts "Precio #{precio}"
puts "Descuento #{descuento}"
puts "Total a pagar #{total}"