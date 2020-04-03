class Pantalla
  def imprimirBonoTotal(bonoTotal)
    puts "El bono total a pagar de todos los trabajadores es: S/. #{bonoTotal}"
  end

  def imprimirBonoTrabajador(bonoTrabajador, tipoTrabajador)
    puts "El bono del trabajador #{tipoTrabajador} es S/. #{bonoTrabajador}"
  end

  def imprimirBonoPromedio(bonoPromedio)
    puts "El promedio general de los bonos a pagar es: S/. #{bonoPromedio}"
  end
end

class Trabajador
  attr_accessor :codigo, :nombre, :apellido, :sueldo, :tipoTrabajador, :ventasPromedio

  def initialize(codigo, nombre, apellido, sueldo, tipoTrabajador, ventasPromedio)
    @codigo = codigo
    @nombre = nombre
    @apellido = apellido
    @sueldo = sueldo
    @tipoTrabajador = tipoTrabajador
    @ventasPromedio = ventasPromedio
  end
end

class Empresa
  attr_accessor :nombre

  def initialize(nombre)
    @nombre = nombre
    @tipoTrabajador = ["Platino", "Oro", "Plata"]
    @trabajadores = Array.new
  end

  def agregarTrabajador(codigo, nombre, apellido, sueldo, tipoTrabajador, ventasPromedio)
    trabajador = Trabajador.new(codigo, nombre, apellido, sueldo, tipoTrabajador, ventasPromedio)
    @trabajadores.push(trabajador)
  end

  def calcularBono(tipoTrabajador, ventasPromedio, cantidadMiembros)
    bono = 0
      case tipoTrabajador
      when "Platino"
        bono = 0.3 + (ventasPromedio * cantidadMiembros)
      when "Oro"
        bono = 0.08 + (ventasPromedio * 10) + 500
      when "Plata"
        bono = (100 + ventasPromedio * 5) + cantidadMiembros
      else
        bono = 0
      end
    return bono
  end

  def calcularCantidadDeMiembros(tipoTrabajador)
    contador = 0
    for trabajador in @trabajadores
      if trabajador.tipoTrabajador == tipoTrabajador
        contador = contador + 1
      end
    end
    return contador
  end

  def calcularBonoDeTrabajadores
    bonoTotal = 0

    for trabajador in @trabajadores
      cantidadMiembros = calcularCantidadDeMiembros(trabajador.tipoTrabajador)
      bono = calcularBono(trabajador.tipoTrabajador, trabajador.ventasPromedio, cantidadMiembros)
      bonoTotal = bonoTotal + bono
    end

    return bonoTotal
  end

  def calcularPromedioDeBonos
    bonoTotal = calcularBonoDeTrabajadores()
    totalTrabajadores = @trabajadores.length
    return bonoTotal / totalTrabajadores
  end
end

empresa = Empresa.new("NEON SAC")
pantalla = Pantalla.new

empresa.agregarTrabajador("pl986", "Arturo", "Lopez", "1500", "Platino",50)
empresa.agregarTrabajador("pl653", "Mijail", "Calla", "1600", "Platino",65)
empresa.agregarTrabajador("or134", "Ana", "Gutierrez", "900", "Oro",46)
empresa.agregarTrabajador("or135", "Sofia", "Merino", "1000", "Oro",28)
empresa.agregarTrabajador("pt146", "Carla", "Ruiz", "750", "Plata",25)
empresa.agregarTrabajador("pt933", "Miguel", "Cuadros", "780", "Plata",15)

# Obtener el total de bonos a pagar de todos los trabajadores independientemente del tipo de trabajador.
bonoTotal = empresa.calcularBonoDeTrabajadores()
pantalla.imprimirBonoTotal(bonoTotal)

# Calcular el monto del bono de un trabajador Platino, oro y plata.
bonoTrabajador = empresa.calcularBono("Platino", 25, 15)
pantalla.imprimirBonoTrabajador(bonoTrabajador,"Platino")
bonoTrabajador = empresa.calcularBono("Oro", 15, 35)
pantalla.imprimirBonoTrabajador(bonoTrabajador,"Oro")

bonoTrabajador = empresa.calcularBono("Plata", 8, 50)
pantalla.imprimirBonoTrabajador(bonoTrabajador,"Plata")

# Calcular el promedio general de todos los bonos, sin importar el tipo.
bonoPromedio = empresa.calcularPromedioDeBonos()
pantalla.imprimirBonoPromedio(bonoPromedio)
