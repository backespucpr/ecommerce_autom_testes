

* Settings *
Documentation   Ações e variáveis para Index do site
Resource        ../support/base.robot




* Keywords *

#--------------------------------------------------------------------------------------------------------------------------------------------------------------
#Validar titulo da página

Validar TItulo
    ${status}=  Run Keyword And Return Status   Title Should Be     ${SITE_TITULO} 
    IF    ${status} == True
        Log To Console    ${yellow}${SITE_TITULO} ${yellow}
        Log To Console    ${green}Validado com Sucesso${green}    
    ELSE
        Log To Console    ${yellow}${SITE_TITULO} ${yellow}       
        Fail              ${red}titulo da página não validado${red}        
    END   
    
Validar Login
    [Arguments]      ${LOGIN}   
    Input Text      css:input[placeholder="Sua ID"]    ${LOGIN}
    Sleep           2
    Click Element   css:button[type="submit"]
    Sleep           5
    ${message} =	Alert Should Not Be Present
    IF
    
Login Invalido
    
	    
    
    

    


    
    