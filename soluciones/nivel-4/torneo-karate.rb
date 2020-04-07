# Solución en progreso

class Pantalla

end


class Participante
  attr_accessor :nombre, :edad, :dni, :cinturon, :eqiupo, :partidasGanadas, :partidasEmpatadas, :partidasPerdidas

  def initialize()
    @partidasGanadas = 0
    @partidasEmpatadas = 0
    @partidasPerdidas = 0
    @puntaje = 0
  end
end

class Equipo
  attr_accessor :nombre
  def initialize()
    @participantes = Array.new
    @puntaje = 0
  end

  def registrarParticipante(nombre, edad, dni, cinturon)
    participante = Participante.new(nombre, edad, dni, cinturon)
    @participantes.push(participante)
  end

end

class Torneo

  def initialize()
    @equipos = Array.new
    @participantes = Array.new
  end

  def registrarEquipo(equipo)
    @equipos.push(equipo)
  end

  def calcularPuntaje(partidasGanadas, partidasEmpatadas)
    puntaje = 0
    puntaje = (partidasGanadas * 2) + (partidasEmpatadas * 3)

    return puntaje
  end

  def obtenerTablaPosiciones

  end

  def obtenerCampeonTorneo

  end

  def buscarParticipantes(dni)

  end

  def registrarPartidasGanada(dni, cantidad)

  end
end
