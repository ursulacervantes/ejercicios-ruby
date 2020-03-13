print "Ingresa el límite inferior: "
inferior = gets.chomp.to_i

print "Ingresa el límite superior: "
superior = gets.chomp.to_i

(inferior..superior).each do |n|
  print "#{n}\n"
end

# también posible:
# (inferior..superior).each { |n| print n }

# también posible:
# i = inferior
# while i <= superior
#   print i
#   i += 1
# end

# también posible:
# for i in inferior..superior
#   print i
# end
