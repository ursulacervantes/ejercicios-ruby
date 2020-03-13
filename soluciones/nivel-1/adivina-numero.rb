num = rand(1...10)

print "Adivina el número que estoy pensando: "
guess = gets.chomp.to_i

while num != guess
  print "Ese no es! Intenta nuevamente: "
  guess = gets.chomp.to_i
end


print "Felicitaciones, lo encontraste!"
