def imprimirPares(a,b)
    numero = a
    pares = []
    index = 0

    while numero <= b do 
        if(numero % 2 == 0 )
            pares[index] = numero
            index = index + 1
        end
        numero = numero + 1
    end

    return pares
end

puts imprimirPares(2,12)