def calcularPromedio(notas)
    total = 0

    for i in 0..notas.size-1
        total = total + notas[i]
    end

    promedio = total / notas.size
    
    return promedio
end

notas = [16,15,14,17,20,13]
promedio = calcularPromedio(notas)
puts "El promedio del curso es #{promedio}"