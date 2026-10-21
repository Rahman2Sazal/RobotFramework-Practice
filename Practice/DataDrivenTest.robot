*** Settings ***

Library    SeleniumLibrary  
Resource    ../Resources/LoginResources.robot
Suite Setup        Launch Browser
Suite Teardown     Close All Browsers
Test Template      Invalid Login

*** Test Cases ***
Right user empty password   admin   ${EMPTY}
Right User Wrong Password   admin   dasljk
Wrong user right password   tyuiop  admin123
Wrong user empty password   tyuiop  ${EMPTY}
Wrong user wrong password   tyuiop  dasljk



*** Keywords ***
Invalid Login
    [Arguments]    ${username}      ${password}
    Open Login Page    
    Input Username      ${username}
    Input Password       ${password}
    Click login button

