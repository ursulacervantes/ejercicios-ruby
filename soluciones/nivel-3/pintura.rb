class Habitacion

  def initialize(largo, ancho, alto)
    @largo = largo
    @ancho = ancho
    @alto = alto
  end

  def calcularVentana(alto, largo)
    tamanho = alto * largo
  end

  def calcularPuerta(alto, largo)
    tamanho = alto * largo
  end

  def calcularCantidadDePintura
    capacidadPorGalon = 58 # 58 metros cuadrados por cada galón

    ventana = 2 * calcularVentana(1, 1)
    puerta = calcularPuerta(1, 2)

    pared1 = @largo * @alto
    pared2 = @alto * @ancho
    habitacion = (pared1 * 2) + (pared2 * 2)

    metrosPintar = habitacion - ventana - puerta
    metrosPintar / capacidadPorGalon
  end

end

habitacion = Habitacion.new(10,20,16)

puts habitacion.calcularCantidadDePintura
