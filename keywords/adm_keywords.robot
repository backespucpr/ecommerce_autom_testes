

* Settings *
Documentation   Ações e variáveis para Index do site
Resource        ../support/base.robot




* Keywords *
#--------------------------------------------------------------
#Cadastro de novo administrador
Cadastrar novo administrador
    Validar Elemento da Pagina     css:#__next .pt-10 h1   ADMIN PANEL    
    Input Text                     id:username    teste
    Input Text                     id:email       teste@gmail.com
    Input Text                     id:password    123456
    Page Should Contain Button     Sign Up       
    Click Button                   Sign Up
    Page Should Contain Button     Confirm Sign Up
    Input Text                     id:username    teste
    Input Text                     name:authcode  teste
    Sleep                          2
    Page Should Contain Button     Confirm Sign Up
    Click Button                   Confirm Sign Up
    Page Should Contain Button     Sign In
    

#Validar o teste de cadastro de novo administrador
Validar cadastro de novo administrador
    ${status}=	Run Keyword And Return Status	Cadastrar novo administrador
    IF   ${status} == True
        Log To Console    ${green}Teste passou ${green}
    ELSE
        Log To Console    ${red}Teste falhou ${red}
    END
#--------------------------------------------------------------

Login administrador
    Click Element                  css:#__next main div .flex a
    Input Text                     id:username    teste
    Input Text                     id:password    123456 
    Click Button                   Sign In
    Sleep                          2     
    Validar Elemento da Pagina     css:#__next .text-3xl   Inventory
    Page Should Contain            View Inventory
#--------------------------------------------------------------
Validar login administrador
    ${status}=	Run Keyword And Return Status	Login administrador
    IF   ${status} == True
        Log To Console    ${green}Teste passou ${green}
    ELSE
        Log To Console    ${red}Teste falhou ${red}
    END



   
    
    






    

    
	    
    
    

    


    
    