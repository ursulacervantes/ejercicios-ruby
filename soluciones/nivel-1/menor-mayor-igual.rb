print "Ingresa un número: "
num = gets.chomp.to_i

# el orden en que hagas los ifs no afecta el resultado
if num < 10
  print "Es menor que 10"
elsif num > 10
  print "Es mayor que 10"
else
  print "Es igual a 10"
end
