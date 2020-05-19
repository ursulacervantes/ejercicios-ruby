puts "Calcular cuánto dinero ganara después de un mes"

def calcularInteres(inversion)
  interes = inversion * 0.02
  return interes
end

puts "Después de un mes ustedes recibirá: #{calcularInteres(200)}"
