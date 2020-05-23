def calcularPromedio(alturas)
    total = 0
    for i in 0..alturas.size-1
        total = total + alturas[i]
    end

    promedio = total / alturas.size

    return promedio
end

alturas = [1.70, 1.56, 1.82, 1.64, 1.73]
promedio = calcularPromedio(alturas)
puts "El promedio de las alturas es de #{promedio}"