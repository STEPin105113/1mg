*** Settings ***
Library  OperatingSystem    
Library    SeleniumLibrary      


*** Test Cases ***
TC1_validation
    Append To Environment Variable    path    ${output_dir}${/}driver 
    Open Browser  https://www.1mg.com/  browser=chrome     options=add_argument("--disable-notifications") 
    Maximize Browser Window
    Set Selenium Implicit Wait  40s
    Run Keyword And Ignore Error    Click Element    //span[contains(@class,'style__close___1l-EN')]/* 
    Run Keyword And Ignore Error    Click Element    //div[text()='Update'] 
    Run Keyword And Ignore Error    Click Element    //span[contains(@class,'style__close___1l-EN')]/* 
    Click Element    (//span[contains(text(),'COVID Test & Prevention')])[1]
    Click Element    (//i[@class='fa fa-angle-down drop-icon'])[2]
    Click Element    //span[contains(text(),'Sanitizers & Handwash Products')]
    Run Keyword And Ignore Error    Click Element    //span[contains(@class,'style__close___1l-EN')]/*    
    Click Element    //div[contains(text(),'Dettol')]  
    Click Element     //span[text()='Relevance']
    Click Element    //li[text()='Price: Low to High'] 
    Run Keyword And Ignore Error    Click Element    //span[contains(@class,'style__close___1l-EN')]/* 
    Click Element    //div[text()='ADD']   
    Click Element    //div[contains(@class,'CartCounter__cart-img___3xOz1 CartCounter__cart-black___RXZ58')]
    Wait Until Page Contains    (//span[text()='mysore'])[2]        # Sleep    10s    
    Click Element    //div[text()='CHECKOUT']    
    