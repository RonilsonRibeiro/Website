Given(/^Que estou na home da Inmetrics$/) do
  visit "http://www.inmetrics.com.br/"
  Capybara.page.driver.browser.manage.window.maximize
end

When(/^Acesso a pagina Quem Somos$/) do
  @QuemSomos = Home.new()
  @QuemSomos.top_QuemSomos.click()
end

Then(/^Exibe o texto 'mais de (\d+) anos de atuacao'$/) do |arg1|
  expect(page).to have_content(/mais de 15 anos de atuação/i)
end