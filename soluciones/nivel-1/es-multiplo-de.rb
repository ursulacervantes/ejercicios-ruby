print "Ingresa el número: "
num = gets.chomp.to_i

if num % 5 == 0
  print "Si, el número #{num} es múltiplo 5"
else
  print "No, el número #{num} no es múltiplo 5"
end
