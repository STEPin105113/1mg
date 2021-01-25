*** Settings ***

Documentation    This file handle all th eoperation related to next page
Resource    ../Resourse/common_functionality.resource

*** Variables ***
${PRODUCT_LOCATOR}    //div[contains(text(),'Dettol')]
${LABEL2_LOCATOR}     //span[text()='Relevance']
${LABEL3_LOCATOR}    //li[text()='Price: Low to High']    
${ADD_LOCATOR}    //div[text()='ADD'] 
${PROCEED_LOCATOR}    //div[contains(@class,'CartCounter__cart-img___3xOz1 CartCounter__cart-black___RXZ58')]   
*** Keywords ***
click on dettol
     Click Element    ${PRODUCT_LOCATOR}
     
click on Relevance 
      
      Click Element    ${LABEL2_LOCATOR}   
click on Price: Low to High
      Click Element    ${LABEL3_LOCATOR}
click on add
      Click Element    ${ADD_LOCATOR}
click on proceed
      Click Element     ${PROCEED_LOCATOR}    
     
