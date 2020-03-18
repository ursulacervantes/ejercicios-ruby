class Alumno

  def initialize(codigo, nombre, apellido, notas)
    @codigo = codigo
    @nombre = nombre
    @apellido = apellido
    @notas = notas
  end

  def promedio
    promedioPracticas = (@notas['pc1']+@notas['pc2']+@notas['pc3'])/3
    pf = promedioPracticas*0.2 + @notas['parcial']*0.3 + @notas['final']*0.5
  end
end

alumno = Alumno.new('u811489', 'Ursula','Cervantes', {
    "pc1" => 18,
    "pc2" => 16,
    "pc3" => 19,
    "parcial" => 17,
    "final" => 20,
   })

puts alumno.promedio
