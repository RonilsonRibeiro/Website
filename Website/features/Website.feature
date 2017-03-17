Feature: Validar texto na pagina Quem Somos 

Eu, como usuario
Desejo acessar a pagina Quem somos no site da inmetrics
Para validar um texto

@Website
Scenario: Validar texto na pagina Quem Somos
	Given Que estou na home da Inmetrics
	When  Acesso a pagina Quem Somos
	Then  Exibe o texto 'mais de 15 anos de atuacao'