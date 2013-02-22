class EstatusJuego
  attr_accessor :palabra
  attr_accessor :intentos
  attr_accessor :letras_capturadas
  
  def initialize (pal)
    @palabra=pal
    @intentos=7
  end  
  

end
