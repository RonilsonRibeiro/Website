When(/^tento logar com usuario invalido$/) do
  @login = Login.new()
  @login.usuario.set('peterp.mac')
  @login.senha.set('peter.mac')
  @login.btnLogin.click  
end

Then(/^O login falha$/) do
  expect(page).to have_content 'Retry Login'
  sleep(5)
end