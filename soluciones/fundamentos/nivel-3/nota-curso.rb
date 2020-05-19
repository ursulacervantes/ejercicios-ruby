puts "Calcular nota final del curso"

def calcularNota(cp1,cp2,cp3,ef,tf)

  promedioParciales = (cp1 + cp2 + cp3)/3
  notaParciales = promedioParciales * 0.55
  notaExamenFinal = ef * 0.30
  notaTrabajoFinal = tf * 0.15

  notaFinal = notaParciales + notaExamenFinal + notaTrabajoFinal

  return notaFinal
end

puts "Tu nota final es: #{calcularNota(16,18,14,15,19)}"
