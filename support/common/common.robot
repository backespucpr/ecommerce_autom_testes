*** Settings ***
Documentation    Keyword para acoes gerais
       




*** Keywords ***
   
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------    

# Iniciar Sessão Serverest 
Acessar Pagina                                                        
    Open Browser        ${URL}      chrome
    
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------    

Iniciar cores de resposta
  ${red}=  Evaluate  ${RED}
  Set Test Variable  ${red}
  ${yellow}=  Evaluate  ${YELLOW}  
  Set Test Variable  ${yellow}
  ${green}=  Evaluate  ${GREEN}  
  Set Test Variable  ${green}

#------------------------------------------------------------------------------------------------------------------------------------------------------------------------    
