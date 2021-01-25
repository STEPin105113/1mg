*** Settings ***

Documentation    This file handle all th eoperation related to next page
Resource    ../Resourse/common_functionality.resource
*** Variables ***
${LOCATION_LOCATOR}     (//span[text()='mysore'])[2]
${TOTAL_LOCATOR}        (//span[contains(text(),'45')])[2]
${REMOVE_LOCATOR}    //span[text()='Remove']
*** Keywords ***
getting location
    ${location}   Get Text    ${LOCATION_LOCATOR}
    Log To Console        ${location}
get total
    ${total}    Get Text     ${TOTAL_LOCATOR}
    Log To Console    ${total}
    Log        ${total}
click on remove
    Click Element    ${REMOVE_LOCATOR}    