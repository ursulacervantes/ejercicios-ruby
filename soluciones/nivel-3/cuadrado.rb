class Cuadrado

  def initialize(lado)
    @lado = lado
  end

  def area
      areaCalculada = @lado*@lado
      areaCalculada
  end

  def perimetro
    perimetroCalculado = @lado*4
    perimetroCalculado
  end
end

cuadrado = Cuadrado.new(10)

puts cuadrado.area
puts cuadrado.perimetro
