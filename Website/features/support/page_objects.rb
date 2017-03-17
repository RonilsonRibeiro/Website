class Home < SitePrism::Page
  element :top_QuemSomos, "[id='menu-item-2960']"
end


class Login < SitePrism::Page
  element :usuario, "input[id='txtUsername']" 
  element :senha, "input[id='txtPassword']"
  element :btnLogin, "input[id='btnLogin']"  
end 

class Discipline < SitePrism::Page
  element :discipline_menu, "[id='menu_discipline_defaultDisciplinaryView']"
  element :cases, "[id='menu_discipline_viewDisciplinaryCases']"
end 

class Cases < SitePrism::Page
  element :add, "input[id='btnAdd']"  
  element :name, "[id='addCase_employeeName_empName']"
  element :case_name, "[id='addCase_caseName']"
  element :description, "[id='addCase_description']"
  element :save, "input[id='btnSave']"
  element :voltar, "input[id='btnBack']"
end 