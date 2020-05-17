print "Ingresar nota CP1: "
cp1 = gets.chomp.to_i
print "Ingresar nota CP2: "
cp2 = gets.chomp.to_i
print "Ingresar nota CP3: "
cp3 = gets.chomp.to_i
print "Ingresar nota Examen Final: "
ef = gets.chomp.to_i
print "Ingresar nota Trabajo Final: "
tf = gets.chomp.to_i

promedioParciales = (cp1 + cp2 + cp3)/3
notaParciales = promedioParciales * 0.55
notaExamenFinal = ef * 0.30
notaTrabajoFinal = tf * 0.15

notaFinal = notaParciales + notaExamenFinal + notaTrabajoFinal

print "Tu nota final es: #{notaFinal}"
