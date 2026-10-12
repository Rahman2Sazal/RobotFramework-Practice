*** Settings ***

Library    SeleniumLibrary  
Resource    ../Resources/LoginResources.robot
Suite Setup     Open my Browser
Suite Teardown      Close Browsers
Test Template    Invalid login

*** Test Cases ***
Right user empty password   admin   ${EMPTY}
Right User Wrong Password   admin   dasljk
Wrong user right password   tyuiop  admin123
Wrong user empty password   tyuiop  ${EMPTY}
Wrong user wrong password   tyuiop  dasljk



*** Keywords ***
Invalid Login
    [Arguments]    ${username}      ${password}
    Input Username      ${username}
    Input Password       ${password}
    Click login button

