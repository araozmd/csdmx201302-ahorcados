require 'modelo/validador'

describe Validador do
   context "Especs de validacion" do
      it "validar que exista la letra A en la palabra MAMA" do
        validador=Validador.new "MAMA"
        existe=validador.validaLetraEnPalabra("A")
        existe.should == true
      end
  
      it "validar que no exista la letra E en la palabra MAMA" do
        validador=Validador.new "MAMA"
        existe=validador.validaLetraEnPalabra("E")
        existe.should == false
      end
  
   end
end
