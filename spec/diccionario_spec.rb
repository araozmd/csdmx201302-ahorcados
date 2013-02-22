require 'lib/diccionario'

describe Diccionario do
  context "Especs de diccionario" do
    before(:each) do
      @dicc=Diccionario.new
    end
  
    it 'Obtener la palabra del diccionario mayor o igual a 4 letras' do
      palabra=@dicc.getPalabra()
      puts " Palabra devuelta "+palabra 
      palabra.size.should >= 4
    end
  
  end



end
