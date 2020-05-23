def calcularHorasTrabajadas(horas)
    totalHoras = 0

    for i in 0..horas.size-1
        totalHoras = totalHoras + horas[i]
    end

    return totalHoras
end

def calcularSueldoSemanal(horas)
    precioHora = 42
    totalHoras = calcularHorasTrabajadas(horas)
    sueldo = totalHoras * precioHora

    return sueldo
end

horas = [4,2,6,8,5,3]
totalHoras = calcularHorasTrabajadas(horas)
sueldo = calcularSueldoSemanal(horas)

puts "El total de horas trabajas es de #{totalHoras}"
puts "El sueldo a pagar es de #{sueldo}"