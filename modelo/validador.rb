require 'modelo/estatus_juego'
class Validador

  attr_accessor :estatus

  def initialize(palabra)
    @estatus=EstatusJuego.new(palabra)
    @estatus.palabra = palabra
  end

  def validaLetraEnPalabra(letra)
    return (estatus.palabra.include?(letra))
  
  end

end
