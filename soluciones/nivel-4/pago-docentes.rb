def imprimirTitulo(titulo)
  print "------------------------\n"
  print "#{titulo}\n"
  print "------------------------\n"
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

  def mostrarDatos
    print "Nombre #{@nombre} #{@apellido} \n"
    print "DNI #{@dni} \n"
    print "Grado de instrucción #{@grado} \n"
    print "Antiguedad #{@antiguedad} \n"
    print "Horas trabajadas #{@horasTrabajadas} \n"
    print "Minutos de tardanza #{@minutosTardanza} \n"
    print "\n"
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
    @docentes.each {|docente| docente.mostrarDatos}
  end

  def listarDocentesPorGrado(grado)
    docentesPorGrado = @docentes.select{|docente| docente.grado == grado.downcase }
    docentesPorGrado.each {|docente| docente.mostrarDatos}
  end

  def obtenerPagoDocentePorGrado(grado)
    imprimirTitulo("Tarifa por grado")

    @tarifa.each do |key, value|
      print "Grado #{key}: S/. #{value} \n"
    end
  end

  def listarPagoDocentes
    imprimirTitulo("Pago del mes por docente")

    @docentes.each {
      |docente|
      print "Docente #{docente.nombre} #{docente.apellido}: #{calcularPagoMensual(docente)} \n"
    }
  end
end

universidad = Universidad.new("INNOVATE")

universidad.agregarDocente("89075371", "Pedro", "Quispe", "Bachiller", 2, 100, 2)
universidad.agregarDocente("08127636", "Fernando", "Rordiguez", "Maestria", 5, 80, 18)

universidad.listarDocentes
universidad.listarDocentesPorGrado("Maestria")
universidad.obtenerPagoDocentePorGrado("bachiller")
universidad.listarPagoDocentes
