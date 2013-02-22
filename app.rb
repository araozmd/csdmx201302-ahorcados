require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require 'modelo/validador'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end


get '/' do
	letra = params["letra"]
	if(letra == nil)
		@@validador = Validador.new
		@intentos = @@validador.getIntentosRestantes()
	else
		@@validador.evaluarJugada(letra)
		@intentos = @@validador.getIntentosRestantes()
	end
	@palabra = @@validador.getLetrasCapturadas()

	
	if(@intentos == 0)
		@letrasFaltantes = @@validador.getLetrasFaltantes()
		@palabra = @@validador.getPalabra()
		erb :finDelJuego
	elsif(@@validador.status() == "EXITO")
		@palabra=@@validador.getPalabra()
		erb :exito
	else
		erb :ahorcado
	end
end
