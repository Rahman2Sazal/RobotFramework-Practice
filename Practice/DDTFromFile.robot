*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/LoginResources.robot
Library         DataDriver    file=../Data/logindata.xlsx    sheet_name=Sheet1

Suite Setup     Launch Browser
Suite Teardown  Close All Browsers
Test Template   Invalid Inputs

*** Test Cases ***
# DataDriver will generate a separate test case for each row using these embedded variables
Login test with ${username} and ${password}

*** Keywords ***
    Input UserName    ${username}
    Input Password    ${password}
    Click Login Button
    Error message should be visible