print "Ingresa un número: "
num = gets.chomp.to_i

if num > 10
  print "El número es mayor a diez"
else
  print "El número es menor o igual a 10"
end

# También es posible:
# print num > 10 ? "El número es mayor a diez" : "El número es menor o igual a 10"
