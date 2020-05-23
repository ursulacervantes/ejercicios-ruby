
puts "Calcular el descuento que ofrece la tienda"

def calcularDescuento(total)
  descuento = total * 0.85
  return descuento
end

puts "El precio a pagar es: #{calcularDescuento(150)}"
