Given /^I start a new game$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^Entro al juego$/ do
  visit '/'
end

Then /^Debo observar que tengo (\d+) intentos restantes$/ do |intentos|
  last_response.body.should =~ /#{intentos}/m
end

