
class Participante
  attr_reader :dni, :nombre, :edad, :puntaje
  attr_accessor :partidasGanadas
  def initialize(codigo, nombre, edad, dni, colorCinturon, partidasGanadas, partidasPerdidas, partidasEmpatadas)
    @codigo = codigo
    @nombre = nombre
    @edad = edad
    @dni = dni
    @colorCinturon = colorCinturon
    @partidasGanadas = partidasGanadas
    @partidasPerdidas = partidasPerdidas
    @partidasEmpatadas = partidasEmpatadas
    @puntaje = (partidasGanadas * 4) + (partidasEmpatadas * 3)
  end
  
  def recalcular_puntaje() 
    @puntaje = (@partidasGanadas * 4) + (@partidasEmpatadas * 3)
  end
  
end

class Equipo
  attr_reader :codigo, :nombre, :participantes  
  def initialize(codigo, nombre)
    @codigo = codigo
    @nombre = nombre
    @participantes = Array.new
  end
  
end

class Torneo
  
  def initialize()
    @equipos = Array.new
    @participantes = Array.new
  end
  
  def obtener_equipo(codigo)
    for equipo in @equipos
      if equipo.codigo == codigo
        return equipo
      end
    end
    return nil
  end
  
  def registrar_equipo(codigo, nombre)
    equipo = obtener_equipo(codigo)
    if equipo == nil
      equipo = Equipo.new(codigo, nombre)
      @equipos.push(equipo)
    end
  end
  
  def registrar_participante(codigo, nombre, edad, dni, colorCinturon, partidasGanadas, partidasPerdidas, partidasEmpatadas, codEquipo)
    equipo = obtener_equipo(codEquipo)
    if equipo != nil 
      participante = Participante.new(codigo, nombre, edad, dni, colorCinturon, partidasGanadas, partidasPerdidas, partidasEmpatadas)
      equipo.participantes.push(participante)
      @participantes.push(participante)
    else
      puts "Equipo no encontrado"
    end
  end
  
  def obtener_participante(dni) 
      for participante in @participantes
        if participante.dni == dni
          return participante
        end
      end
      return nil
  end  
  
  def actualizar_partidas_ganadas(dni, partidasGanadas)
    participante = obtener_participante(dni)
    if participante != nil
      participante.partidasGanadas = partidasGanadas
      participante.recalcular_puntaje()
    else
      puts "Participante no encontrado"
    end
  end
  
  def ganador()
    maxPuntaje = 0
    campeon = nil
    for participante in @participantes
      if participante.puntaje > maxPuntaje
        maxPuntaje = participante.puntaje
        campeon = participante
      end
    end
    return campeon
  end
  
  def tabla_posiciones()
    posiciones = []
    for participante in @participantes
      posiciones.push(participante)
    end
    
    for i in 0...posiciones.count
      for j in i+1...posiciones.count
        participanteA = posiciones[i]
        participanteB = posiciones[j]
        if participanteA.puntaje < participanteB.puntaje
          temporal = participanteA
          posiciones[i] = participanteB
          posiciones[j] = temporal
        end
      end
    end
    
    for i in 0...posiciones.count
      participante = posiciones[i]
      puts "#{i+1}° lugar:"
      print " "
      imprimir_info_participante(participante)
    end
  end
  
  def listar_equipos()
    for equipo in @equipos
      imprimir_info_equipo(equipo)
      totalPuntaje = 0
      for participante in equipo.participantes
        totalPuntaje = totalPuntaje + participante.puntaje
      end
      puts " Puntaje total: #{totalPuntaje}"
    end
  end
  
  def imprimir_info_equipo(equipo)
    if equipo == nil
      return
    end
    puts "Equipo: #{equipo.nombre}"
  end
  
  def imprimir_info_participante(participante)
    if participante == nil
      return
    end
    puts "Participante: #{participante.dni} - #{participante.nombre} de #{participante.edad} años. Puntaje actual : #{participante.puntaje}"   
    # puts "    PG: #{participante.partidasGanadas}"
  end
  
end

torneo = Torneo.new
torneo.registrar_equipo("EQ01", "Karatecas Kids")
torneo.registrar_equipo("EQ02", "Karatecas de Surco")
torneo.registrar_equipo("EQ03", "Karatecas de Miraflores")
torneo.registrar_equipo("EQ04", "Karatecas de San Miguel")
torneo.registrar_equipo("EQ05", "Karatecas de San Borja")
torneo.registrar_equipo("EQ06", "Karatecas de La Molina")
torneo.registrar_participante("COD01", "Jose Torres", 29, "46531738", "verde", 2, 4, 4, "EQ02")
torneo.registrar_participante("COD02", "Emilio Verastegui", 30, "46531740", "verde", 0, 4, 2, "EQ02")
torneo.registrar_participante("COD03", "Lorenzo Puente", 31, "46531742", "verde", 0, 4, 1, "EQ02")
torneo.registrar_participante("COD04", "Ricardo Rivero", 12, "53173800", "amarillo", 1, 2, 0, "EQ01")
torneo.registrar_participante("COD05", "Carlos Herrera", 25, "65331738", "marron", 10, 5, 0, "EQ03")

# a
participanteA = torneo.obtener_participante("46531738")
torneo.imprimir_info_participante(participanteA)
# b
ganadorTorneo = torneo.ganador()
torneo.imprimir_info_participante(ganadorTorneo)
# c
torneo.actualizar_partidas_ganadas("53173800", 30)
participanteB = torneo.obtener_participante("53173800")
torneo.imprimir_info_participante(participanteB)
#d
puts
torneo.tabla_posiciones()
#e
puts
torneo.listar_equipos()