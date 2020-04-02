class Pantalla
  def imprimirTitulo(titulo)
    puts "------------------------"
    puts "#{titulo}"
    puts "------------------------"
  end

  def imprimirDatosDocentes(docentes)
    for docente in docentes
      imprimirDatosDocente(docente)
    end
  end

  def imprimirDatosDocente(docente)
    puts "Nombre #{docente.nombre} #{docente.apellido}"
    puts "DNI #{docente.dni}"
    puts "Grado de instrucción #{docente.grado}"
    puts "Antiguedad #{docente.antiguedad}"
    puts "Horas trabajadas #{docente.horasTrabajadas}"
    puts "Minutos de tardanza #{docente.minutosTardanza}"
    puts "--------------------------------------"
  end

  def imprimirPagoDocentes(pagos)
    for pago in pagos
      imprimirPagoDocente(pago[:docente].nombre, pago[:docente].apellido, pago[:pago])
    end
  end

  def imprimirPagoDocente(nombre, apellido, pago)
    puts "Docente #{nombre} #{apellido}: #{pago}"
  end

  def imprimirTarifa(tarifa)
    puts(tarifa)
  end
end


class Docente
  attr_accessor :dni, :nombre, :apellido, :grado, :antiguedad, :horasTrabajadas, :minutosTardanza

  def initialize(dni, nombre, apellido, grado, antiguedad, horasTrabajadas, minutosTardanza)
    @dni = dni
    @nombre = nombre
    @apellido = apellido
    @grado = grado.downcase
    @antiguedad = antiguedad
    @horasTrabajadas = horasTrabajadas
    @minutosTardanza = minutosTardanza
  end

end

class Universidad
  attr_accessor :nombre

  def initialize(nombre)
    @nombre = nombre
    @docentes = Array.new
    @tarifa = { "bachiller": 40, "titulado": 80, "maestria": 100, "doctorado": 180 }
  end

  def agregarDocente(dni, nombre, apellido, grado, antiguedad, horasTrabajadas, minutosTardanza)
    docente = Docente.new(dni, nombre, apellido, grado, antiguedad, horasTrabajadas, minutosTardanza)
    @docentes.push(docente)
  end

  def obtenerTarifa(docente)
    return @tarifa[docente.grado.to_sym]
  end

  def calcularAumento(docente)
    aumento = 0

    case docente.antiguedad
    when 0..3
      aumento = 3/100
    when 4..6
      aumento = 4/100
    when 7..10
      aumento = 5/100
    when 11..15
      aumento = 7/100
    else
      aumento = 10/100
    end

    return aumento
  end

  def calcularBono(docente)
    bono = 0
    case docente.minutosTardanza
    when 0
      bono = 120
    when 1..5
      bono = 80
    when 6..10
      bono = 40
    when 11..15
      bono = 0
    else
      bono = -40
    end

    return bono
  end

  def calcularPagoMensual(docente)
    pagoMensual = obtenerTarifa(docente) + calcularAumento(docente) + calcularBono(docente)
    return pagoMensual
  end

  def listarDocentes
    return @docentes
  end

  def listarDocentesPorGrado(grado)
    docentesPorGrado = Array.new

    for docente in @docentes
      if docente.grado == grado.downcase
        docentesPorGrado.push(docente)
      end
    end

    return docentesPorGrado
  end

  def obtenerPagoDocentePorGrado(grado)
    return @tarifa
  end

  def listarPagoDocentes
    pagos = Array.new
    for docente in @docentes
      pagos.push({"docente": docente, "pago": calcularPagoMensual(docente)})
    end
    return pagos
  end
end


pantalla = Pantalla.new
universidad = Universidad.new("INNOVATE")

universidad.agregarDocente("89075371", "Pedro", "Quispe", "Bachiller", 2, 100, 2)
universidad.agregarDocente("08127636", "Fernando", "Rordiguez", "Maestria", 5, 80, 18)

# Liste los docentes, muestre todos sus datos y su respectivo sueldo
docentes = universidad.listarDocentes
pantalla.imprimirDatosDocentes(docentes)

# Liste los docentes en un determinado grado, muestre todos sus datos y su respectivo sueldo
docentes = universidad.listarDocentesPorGrado("Maestria")
pantalla.imprimirDatosDocentes(docentes)


# Muestre el monto que se paga por grado de docente
tarifa = universidad.obtenerPagoDocentePorGrado("bachiller")
pantalla.imprimirTitulo("Tarifa por grado")
pantalla.imprimirTarifa(tarifa)

#  Listado los montos que se paga en los cuatro grados de los docentes
pagos = universidad.listarPagoDocentes
pantalla.imprimirTitulo("Pago del mes por docente")
pantalla.imprimirPagoDocentes(pagos)
