class Alumno

  def initialize(codigo, nombre, t1, t2)
    @codigo = codigo
    @nombre = nombre
    @t1 = t1
    @t2 = t2
  end

  def getStatus
    result = ''
    if @t1 >= 85 && @t2 >= 85
      result = "aprobado"
    elsif @t1 >= 85 || @t2 >= 85
      result = "observado"
    else
      result = "reprobado"
    end
    result
  end
end

alumno1 = Alumno.new('u811489', 'Ursula Cervantes', 85, 85)
puts alumno1.getStatus

alumno2 = Alumno.new('u866409', 'Angel Perez', 15, 85)
puts alumno2.getStatus

alumno3 = Alumno.new('u823097', 'Luis Prado', 25, 65)
puts alumno3.getStatus
