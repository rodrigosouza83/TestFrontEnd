# language:pt

@login

Funcionalidade: Login
    Eu como aluno quero acessar 
    O APP para realizar consultas, alterações de dados
    Pagamento de boleto e acesso ao boletim

    Contexto: Pagina de Login
    Dado que eu acesse a tela de login

    Cenário: Login POSITIVO
 
        Quando eu realizo o login
        | Email    | rodrigo@gmail.com    |
        | Senha    | 123456   | 
        Então uma mensagem de usuário logado com sucesso é exibida

    Cenário: Login Negativo
 
        Quando eu realizo o login
        | Email    |          |
        | Senha    |          | 
        Então uma mensagem de Há campos em branco é exibida

        Cenário: Login Negativo Senha
 
        Quando eu realizo o login
        | Email    | rodrigo@gmail.com|
        | Senha    |  8w0w0w0w0        | 
        Então uma mensagem de senha incorreta é exibida

         Cenário: Login Negativo Email
 
        Quando eu realizo o login
        | Email    | rodrigogmail.com|
        | Senha    |  123456      | 
        Então uma mensagem de email inválido é exibida
        