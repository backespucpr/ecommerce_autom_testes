

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
#--------------------------------------------------------------
#Cadastro de novo produto
Cadastrar novo produto
    #${file_path}    /home/neybackes/Documentos/jamstack_autom_testes/ecommerce_autom_testes/support/common/produto_exemplo.png
    Click Element                  //*[@class="flex my-6"]//p[text()="Add Item"]
    sleep                    2
    Validar Elemento da Pagina     css:#__next div main div h3     Add Item
    sleep                    2
    Input Text                     id:name                Sofá
    Input Text                     id:price               300
    Input Text                     id:description         4 lugares
    #Input                          id:file                ${file_path}
    Input Text                     id:currentInventory    10
    Input Text                     id:categories          Sala
    Input Text                     id:brand               Monaco
    Sleep                          2
    Scroll Element Into View       css:#__next div main .flex a
    Sleep                          2
    Click Element                  css:#__next div main .flex a
    Sleep                          2
#--------------------------------------------------------------
Validar Cadastro Produto
    ${status}=	Run Keyword And Return Status	Cadastrar novo produto
    IF   ${status} == True
        Log To Console    ${green}Teste passou ${green}
    ELSE
        Log To Console    ${red}Teste falhou ${red}
    END   
    
#--------------------------------------------------------------

Logout Administrador pagina inventario
    Click Button                   Sign Out                 
    Sleep                          2
    Page Should Contain            Sign Up
    Page Should Not Contain        Sign Out

#------------------------------------------------------------
    
Validar Logout Administrador pagina inventario
    ${status}=	Run Keyword And Return Status	Logout Administrador pagina inventario
    IF   ${status} == True
        Log To Console    ${green}Teste passou ${green}
    ELSE
        Log To Console    ${red}Teste falhou ${red}
    END
    
#--------------------------------------------------------------
Logout Administrador pagina adicionar produto
    Click Element                  //*[@class="flex my-6"]//p[text()="Add Item"]
    Sleep                          2
    Click Button                   Sign Out                 
    Sleep                          2
    Page Should Contain            Sign Up
    Page Should Not Contain        Sign Out   


Validar Logout Administrador pagina adiconar produto
    ${status}=	Run Keyword And Return Status	Logout Administrador pagina adicionar produto
    IF   ${status} == True
        Log To Console    ${green}Teste passou ${green}
    ELSE
        Log To Console    ${red}Teste falhou ${red}
    END

    


    
    