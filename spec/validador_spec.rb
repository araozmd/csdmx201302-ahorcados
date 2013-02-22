require 'lib/validador'

describe Validador do
  before(:each) do 
      @validador=Validador.new "MAMA"
   end

   context "Especs de validacion" do
      it "validar que exista la letra A en la palabra MAMA" do
        
        existe=@validador.validaLetraEnPalabra("A")
        existe.should == true
      end
  
      it "validar que no exista la letra E en la palabra MAMA" do
        existe=@validador.validaLetraEnPalabra("E")
        existe.should == false
      end
      
      it "Con la palabra MESA y la captura de la letra S, mostrar '_ _ S _'" do
        @validador=Validador.new("MESA")
        jugada=@validador.evaluarJugada("S")
        jugada.should == "_ _ S _"
      end
      
       it "Con la palabra MAMA y la captura de la letra Z, los intentos restantes deben ser 6" do
        @validador.evaluarJugada("Z")
        restantes=@validador.getIntentosRestantes()
        restantes.should == 6
       end 
  
       it "Con la palabra MESa y la captura de la letra Z,X,Y, los intentos restantes deben ser 4" do
        @validador.evaluarJugada("Z")
        @validador.evaluarJugada("X")
        @validador.evaluarJugada("Y")
        restantes=@validador.getIntentosRestantes()
        restantes.should == 4
       end 
       it "Con la palabra MAMA y la captura de las letras M,A, el estatus debe ser EXITO" do
        @validador.evaluarJugada("A")
        @validador.evaluarJugada("M")
        estado=@validador.estatus()
        estado.should == "EXITO"
       end 
       
       it "Con la palabra MAMA y la captura de las letras B,C,D,E,F,G,H, el estatus debe ser FALLA" do
        @validador.evaluarJugada("B")
        @validador.evaluarJugada("C")
        @validador.evaluarJugada("D")
        @validador.evaluarJugada("E")
        @validador.evaluarJugada("F")
        @validador.evaluarJugada("G")
        @validador.evaluarJugada("H")
        estado=@validador.estatus()
        estado.should == "FALLA"
       end 
      it "Con la palabra MAMA y la captura de las letras M se deben mostrar la letra A restante" do
        @validador.evaluarJugada("M")
        faltantes=@validador.getLetrasFaltantes()
        faltantes.should == "A,A"
       end 
       
      it "Con la palabra HOTEL y la captura de las letras H,E se deben mostrar 'O,T,L' restante" do
        @validador=Validador.new("HOTEL")
        @validador.evaluarJugada("H")
        @validador.evaluarJugada("E")
        faltantes=@validador.getLetrasFaltantes()
        faltantes.should == "O,T,L"
       end 
   end
end
