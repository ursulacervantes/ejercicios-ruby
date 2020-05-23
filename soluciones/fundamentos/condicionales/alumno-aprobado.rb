def calcularPromedio(c1,c2,c3,c4,c5)
    suma = c1 + c2 + c3 + c4 + c5
    promedio = suma / 5
    return promedio
end

def obtenerResultado(promedio)
    if(promedio > 13)
        return "aprobado"
    else
        return "reprobado"
    end
end

c1 = 18
c2 = 16
c3 = 14
c4 = 19
c5 = 17

promedio = calcularPromedio(c1,c2,c3,c4,c5)

puts "El alumno es #{obtenerResultado(promedio)}"