class Empleado

  def initialize(dni, nombre, cargo, sueldo, horasExtra, tipoPension)
    @dni = dni
    @nombre = nombre
    @cargo = cargo
    @pagoHoraExtra = 50
    @horasExtra = horasExtra
    @tipoPension = tipoPension
    @sueldo = sueldo + (horasExtra * 50)
  end

  def calcularDescuentoDePension()
    descuento = 0
    if @tipoPension == 'AFP'
      descuento = @sueldo * 0.13
    elsif @tipoPension == 'ONP'
      descuento = @sueldo * 0.12
    end
    descuento
  end

  def calcularDescuentoPorImpuestos()
    descuento = @sueldo * 0.15
  end

  def calcularRemuneracion
    descuentoDePension = calcularDescuentoDePension()
    descuentoPorImpuestos = calcularDescuentoPorImpuestos()

    remuneracion = @sueldo - descuentoDePension - descuentoPorImpuestos
  end

end

empleado = Empleado.new('75023481', 'Anais Rodriguez', 'Diseñador', 8500, 2, 'AFP')
puts empleado.calcularRemuneracion
