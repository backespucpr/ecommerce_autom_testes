*** Settings ***
Resource        ../support/base.robot
Suite Setup     Acessar Home
Suite Teardown  Close Browser


*** Test Cases  ***


Cenario: Validar a inscrição de um novo administrador
    [Tags]                                  CADASTRO_ADM
    Iniciar cores de resposta    
    Validar TItulo                          Jamstack ECommerce      
    Maximize Browser Window
    Acessar Pagina                          admin
    Validar cadastro de novo administrador 
    
Cenario: Validar o login como administrador 
    [Tags]                                  LOGIN_ADM
    Iniciar cores de resposta
    Validar Titulo                          Jamstack ECommerce 
    Maximize Browser Window
    Acessar pagina                          admin  
    Validar login administrador
    sleep                                   2
Cenario: Cadastrar um novo produto no inventário
    [Tags]                                  CADASTRO_PRODUTO
    Iniciar cores de resposta
    Validar Titulo                          Jamstack ECommerce 
    Maximize Browser Window
    Acessar pagina                          admin  
    Login administrador
    Validar Cadastro Produto


Cenario: Validar Logout do administrador pagina inventario
    [Tags]                                  LOGOUT_ADM_INVENTARIO
    Iniciar cores de resposta
    Validar Titulo                          Jamstack ECommerce 
    Maximize Browser Window
    Acessar pagina                          admin  
    Login administrador
    sleep                                   2
    Validar Logout Administrador pagina inventario
    sleep                                   2

Cenario: Validar Logout do administrador pagina adicionar produto
    [Tags]                                  LOGOUT_ADM_ADD_PRODUTO
    Iniciar cores de resposta
    Validar Titulo                          Jamstack ECommerce 
    Maximize Browser Window
    Acessar pagina                          admin  
    Login administrador
    sleep                                   2
    Validar Logout Administrador pagina adiconar produto
    sleep                                   2


    
    

