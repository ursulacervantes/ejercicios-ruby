# Utilitario
def imprimirTitulo(titulo)
  puts "------------------------"
  puts "#{titulo}"
  puts "------------------------"
end

def imprimirDatosDocente(dni, nombre, apellido, grado, antiguedad, horasTrabajadas, minutosTardanza)
  puts "Nombre #{@nombre} #{@apellido}"
  puts "DNI #{@dni}"
  puts "Grado de instrucción #{@grado}"
  puts "Antiguedad #{@antiguedad}"
  puts "Horas trabajadas #{@horasTrabajadas}"
  puts "Minutos de tardanza #{@minutosTardanza}"
end

def imprimirPagoDocente(nombre, apellido, pago)
  puts "Docente #{nombre} #{apellido}: #{pago}"
end

def imprimirTarifa(tarifa)
  puts(tarifa)
end

# Clases
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

  def mostrarDatos
    imprimirDatosDocente(@dni, @nombre, @apellido, @grado, @antiguedad, @horasTrabajadas, @minutosTardanza)
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

  def mostrarDatosDocentes(docentes)
    for docente in docentes
      docente.mostrarDatos
    end
  end

  def listarDocentes
    mostrarDatosDocentes(@docentes)
  end

  def listarDocentesPorGrado(grado)
    docentesPorGrado = Array.new

    for docente in @docentes
      if docente.grado == grado.downcase
        docentesPorGrado.push(docente)
      end
    end

    mostrarDatosDocentes(docentesPorGrado)
  end

  def obtenerPagoDocentePorGrado(grado)
    imprimirTitulo("Tarifa por grado")
    imprimirTarifa(@tarifa)
  end

  def listarPagoDocentes
    imprimirTitulo("Pago del mes por docente")

    for docente in @docentes
      imprimirPagoDocente(docente.nombre, docente.apellido, calcularPagoMensual(docente))
    end
  end
end

universidad = Universidad.new("INNOVATE")

universidad.agregarDocente("89075371", "Pedro", "Quispe", "Bachiller", 2, 100, 2)
universidad.agregarDocente("08127636", "Fernando", "Rordiguez", "Maestria", 5, 80, 18)

# Liste los docentes, muestre todos sus datos y su respectivo sueldo
universidad.listarDocentes

# Liste los docentes en un determinado grado, muestre todos sus datos y su respectivo sueldo
universidad.listarDocentesPorGrado("Maestria")

# Muestre el monto que se paga por grado de docente
universidad.obtenerPagoDocentePorGrado("bachiller")

#  Listado los montos que se paga en los cuatro grados de los docentes
universidad.listarPagoDocentes
