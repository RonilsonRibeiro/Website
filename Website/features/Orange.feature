Feature: Orange HRM

Eu, como usuario
Desejo acessar a pagina da OrangeHRM, fazer login como Peter e adicionar uma disciplina
Para validar se concluiu a nota com sucesso

@LoginSucesso
Scenario: Incluir case  
	Given Que estou na home da OrangeHRM
	When  Efetuo o login	 
	 And  Acesso Disciplinary Case
	 And  Adiciono um case
	Then  A nota foi concluida com sucesso


@LoginNegativo
Scenario: Login negativo 
	Given Que estou na home da OrangeHRM
	When  tento logar com usuario invalido	
	Then  O login falha	