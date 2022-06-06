Dado('que usuario queira logar') do
    visit ''
    sleep 3
end
  
Quando('ele digitar as credenciais validas') do
    @test = LoginPage.new
    @test.userLogin
end
  
Então('o login acontecera com sucesso') do
    @home = HomePage.new 
    @home.checkLoginSuccessful
end