require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end


get '/' do
	palabra = ["","","",""]
	
	erb :ahorcado
end
