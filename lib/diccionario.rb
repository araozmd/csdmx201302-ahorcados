class Diccionario

  attr_accessor :palabra

  def getPalabra()
    palabras =  [
      "MAMA",
      "PAPA",
      "CASA",
      "HOTEL",
      "ESCUELA",
      "MAESTRA",
      "AMIGO",
      "HERMANO",
      "ABUELA"
      ]
      
      indice=(rand*palabras.size-1).to_i
      palabra=palabras[indice];
      return palabra
      
  end
end
