*** Settings ***
Resource        ../support/base.robot
Suite Setup     Acessar Pagina 
Suite Teardown  Close Browser


*** Test Cases  ***


Cenario: Deve validar o titulo
    [Tags]                      TITULO_PAGINA
    Iniciar cores de resposta    
    Validar TItulo    
    Maximize Browser Window

    


    
    

