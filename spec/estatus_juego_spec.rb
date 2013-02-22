require 'modelo/estatus_juego'

describe EstatusJuego do
  context "Especs de diccionario" do
    before(:each) do
      @estatus=EstatusJuego.new("COLCHON")
    end
    
    it 'Obtener Intentos del Estatus de inicio y revisar que es 7' do
      intentos=@estatus.intentos
      intentos.should == 7
    end  
    it 'revisar que la palabra asignada sea PAPA' do
      @estatus=EstatusJuego.new("PAPA")
      palabra=@estatus.palabra
      palabra.should == "PAPA"
    end  
  
  end
end
