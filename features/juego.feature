Feature: Valida pagina inicial
	Scenario: "Validar numero de intentos"
		Given Entro al juego
		Then Debo observar que tengo 7 intentos restantes

	Scenario: "Ver 6 intentos"
		Given Entro al juego
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		Then Debo observar la leyenda "Te quedan 6 intentos"

	Scenario: "Ver 5 intentos"
		Given Entro al juego
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		Then Debo observar la leyenda "Te quedan 5 intentos"

	Scenario: "Ver 4 intentos"
		Given Entro al juego
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		Then Debo observar la leyenda "Te quedan 4 intentos"

	Scenario: "Ver 3 intentos"
		Given Entro al juego
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		Then Debo observar la leyenda "Te quedan 3 intentos"

	Scenario: "Ver 2 intentos"
		Given Entro al juego
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		Then Debo observar la leyenda "Te quedan 2 intentos"

	Scenario: "Ver 1 intentos"
		Given Entro al juego
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		Then Debo observar la leyenda "Te quedan 1 intentos"

	Scenario: "Has perdido"
		Given Entro al juego
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		And Capturo una letra "X" en el campo de captura
		When Presiono el boton enviar
		Then Debo observar la leyenda "Buen intento"
		And Debo observar la leyenda "Te faltaron:"
		And Debo observar la leyenda "La palabra era:"

