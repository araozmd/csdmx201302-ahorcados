require 'lib/estatus_juego'
class Validador

  attr_accessor :estatus

  def initialize(palabra)
    @estatus=EstatusJuego.new(palabra)
  end

  def validaLetraEnPalabra(letra)
    return (estatus.palabra.include?(letra))
  
  end
  def evaluarJugada (letra)
    resumen = ""
    palabra = @estatus.palabra
    encontrado=false
    #puts "palabra:" + palabraArray.to_s + ",con la letra:"+letra + ", capturado "+@estatus.letras_capturadas.to_s
    for i in (0..palabra.size-1) do
      if (palabra[i,1] == letra)
        encontrado=true
        @estatus.letras_capturadas[i,1]=letra
      end
    end
    if (not encontrado) 
      @estatus.intentos-=1
    end
    return @estatus.letras_capturadas.split("").join(" ")
  end
  
  def getPalabraCapturada()
    @estatus.letras_capturadas
  end
  
  def getIntentosRestantes()
     @estatus.intentos
  end

	def getLetrasFaltantes()
		"C,S"
	end

	def getPalabra()
		@estatus.palabra
	end

	def status()
		""
	end
end
