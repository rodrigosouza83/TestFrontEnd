Dado("que eu acesse a tela de login") do
find('#editTextEmail').set @user['Email']
end
  
  Quando("eu realizo o login") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    @user= table.rows_hash
      puts "Inserir usuário e senha........."
  
  
      find('#editTextEmail').set @user['Email']
      find('#editTextPassword').set @user['password']
      click_button 'LOGIN'
  end
  
  Então("uma mensagem de usuário logado com sucesso é exibida") do
    expect(page).to have_content("Login com sucesso")
  end
  
  Então("uma mensagem de Há campos em branco é exibida") do
    expect(page).to have_content("Há campos em branco")
 end
  
  Então("uma mensagem de senha incorreta é exibida") do
    expect(page).to have_content("Senha Incorreta")
  end
  
  Então("uma mensagem de email inválido é exibida") do
    expect(page).to have_content("Email inválido")
  end
  