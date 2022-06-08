Dado('que usuario queira logar') do
    @test = LoginPage.new
    @test.load
   
end
  
Quando('ele digitar as credenciais validas') do
    @test.userLogin(CREDENTIAL[:user1][:email], CREDENTIAL[:user1][:password])
end
  
Então('o login acontecera com sucesso') do
    @home = HomePage.new 
    @home.checkLoginSuccessful(CREDENTIAL[:user1][:name])
end