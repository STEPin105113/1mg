*** Settings ***
Documentation    This file handle all th eoperation related to login page
Resource    ../Resourse/common_functionality.resource
*** Variables ***
${ALERT_LOCATOR}    //span[contains(@class,'style__close___1l-EN')]/*
${UPDATE_LOCATOR}    //div[text()='Update'] 
${LABEL_LOCATOR}    (//i[@class='fa fa-angle-down drop-icon'])[2]
${LABEL2_LOCATOR}   //span[contains(text(),'Sanitizers & Handwash Products')] 





*** Keywords ***
alert handle
    Run Keyword And Ignore Error    Click Element    ${ALERT_LOCATOR} 
click on update
    Run Keyword And Ignore Error    Click Element      ${UPDATE_LOCATOR} 
click on covid prevention
    Click Element       ${LABEL_LOCATOR} 
click sanitizer
    Click Element        ${LABEL2_LOCATOR}
    
 