
Funcionalidade:  Cadastro Administrador

    Como usuário da aplicação JamStack 
    Eu quero cadastrar um novo administrador
    Para que eu possa ter acesso a área administrativa

Cenario: Validar a inscrição de um novo administrador

    Dado que eu queira fazer login como administrador
    Quando eu clico na opção admin
    E informo os dados para cadastro
    E clico na opção "Sign Up"
    Então a página de "Confirm Sign Up" deve aparecer
    Quando informo os dados usuário e autenticação
    E clico na opção Confirm Sign Up
    Então a página "Sign in" deve aparecer

Funcionalidade:  Login Administrador

    Como usuário da aplicação JamStack
    Eu quero fazer login como administrador
    Para que eu possa ter acesso a área administrativa

Cenario: Validar login como administrador

    Dado que eu queira fazer login como usuário
    Quando eu clico na opção admin
    E clico na opção "Already signed up?"
    E informo os dados para login
    Então a pagina "Invetory" deve aparecer

Funcionalidade:  Adicionar item ao inventário

    Como usuário da aplicação JamStack
    Eu quero acessar a area administrativa
    Para que eu possa adicionar um novo item ao inventário

Cenario: Validar adicionar item ao inventário

    Dado que eu queira cadastra um novo produto no inventario
    Quando eu faco login com administrador
    E entro na opção adicionar "add item"
    E adiciono os dados do novo produto
    Entao ao clicar na opção "Add item" o produto deve ser cadastrado

Funcionalidade:  Excluir item do inventário

    Como usuário da aplicação JamStack
    Eu quero acessar a area administrativa
    Para que eu possa excluir um item do inventário

Cenario: Validar excluir item do inventário

    Dado que eu queira excluir um produto do inventário
    Quando eu faco login como adiminstrador
    E acesso a pagina "Invetory"
    E clico em remove produto de um elemento
    Então o produto deve ser removido do inventário


Funcionalidade:  Logout Administrador pagina inventário

    Como usuário da aplicação JamStack
    Eu quero acessar a area administrativa
    Para que eu possa fazer logout na pagina de inventario

Cenario: Validar logout na página inventário

    Dado que eu queira fazer logout como administrador
    Quando faco login com Administrador
    E estou dentro de página inventário
    E clico em na opção "Sign Out"
    Entao devo retornar ao Painel Administrativo




Funcionalidade:  Logout Administrador pagina adicionar produto

    Como usuário da aplicação JamStack
    Eu quero acessar a area administrativa
    Para que eu possa fazer logout na pagina de adicionar produto

Cenario: Validar logout na página de adicionar produto

    Dado que eu queira fazer logout como administrador
    Quando faco login com Administrador
    E estou dentro de página inventário
    E clico na opção "Add item"
    E clicl na opção "Sign out"
    Então devo retornar ao Painel Administrativo












  
        