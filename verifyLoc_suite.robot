*** Settings ***
    
Resource    Resourse/common_functionality.resource
Resource    pages/DashboardPage.robot
Resource    pages/NextPage.robot
Resource    pages/ProductAdd.robot
Test Setup    Launch Browser
Test Teardown    End Browser
*** Test Cases ***
TC1_VerifyCredentials
    alert handle
    click on update
    alert handle 
    click on covid prevention
    click sanitizer
    alert handle   
    click on dettol
    Sleep    3s      
    ${ele}    Get WebElement    //span[text()='Relevance']
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${ele}
    
    click on Price: Low to High
    alert handle
    click on add  
    click on proceed
    getting location
    get total
    click on remove

    
 