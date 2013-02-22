Given /^I start a new game$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^Entro al juego$/ do
  visit '/'
end

Then /^Debo observar que tengo (\d+) intentos restantes$/ do |intentos|
  last_response.body.should =~ /#{intentos}/m
end

Given /^Capturo una letra "(.*?)" en el campo de captura$/ do |letra|
  fill_in("letra", :with => letra)
end

When /^Presiono el boton enviar$/ do
  click_button("Enviar")
end

Then /^Debo observar la leyenda "(.*?)"$/ do |leyenda|
  last_response.body.should =~ /#{leyenda}/m
end

