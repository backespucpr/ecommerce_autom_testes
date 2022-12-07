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
    sleep                                   3

    


    
    

