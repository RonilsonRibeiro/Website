Given(/^Que estou na home da OrangeHRM$/) do
  visit "https://enterprise-demo.orangehrmlive.com"
  Capybara.page.driver.browser.manage.window.maximize
end

When(/^Efetuo o login$/) do
  @login = Login.new()
  @login.usuario.set('peter.mac')
  @login.senha.set('peter.mac')
  @login.btnLogin.click  
end

When(/^Acesso Disciplinary Case$/) do
  @discipline = Discipline.new()
  @discipline.discipline_menu.hover
  @discipline.cases.click
end

When(/^Adiciono um case$/) do
  @cases = Cases.new()
  @cases.add.click  
  @cases.name.set('Jasmine Morgan')
  @cases.case_name.set('Ocorrencia grave')
  @cases.description.set('Descricao ocorrencia grave')
  @cases.save.click
  @cases.voltar.click   
end

Then(/^A nota foi concluida com sucesso$/) do
  expect(page).to have_content 'Jasmine Morgan'
  expect(page).to have_content 'Ocorrencia grave'
  expect(page).to have_content 'Descricao ocorrencia grave'
  sleep(5)
end