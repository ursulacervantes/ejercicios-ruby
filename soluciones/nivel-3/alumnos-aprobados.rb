class Alumno

  def initialize(codigo, nombre, t1, t2)
    @codigo = codigo
    @nombre = nombre
    @t1 = t1
    @t2 = t2
  end

  def estaAprobado
    if @t1 >= 85 && @t2 >= 85
      print "Alumno #{@nombre} con código #{@codigo} está aprobado."
    elsif @t1 >= 85 || @t2 >= 85
      print "Alumno #{@nombre} con código #{@codigo} está observado."
    else
      print "Alumno #{@nombre} con código #{@codigo} está reprobado."
    end
  end
end

alumno1 = Alumno.new('u811489', 'Ursula Cervantes', 55, 15)
alumno1.estaAprobado

alumno2 = Alumno.new('u866409', 'Angel Perez', 15, 85)
alumno2.estaAprobado

alumno3 = Alumno.new('u823097', 'Luis Prado', 25, 65)
alumno3.estaAprobado
