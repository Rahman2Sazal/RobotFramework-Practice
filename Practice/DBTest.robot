*** Settings ***

Library    SeleniumLibrary  
Library    OperatingSystem
Library    DatabaseLibrary
Resource    ../Resources/LoginResources.robot

Suite Setup    Connect to Database      pymysql     ${DBName}   ${DBUser}   ${DBPassword}   ${DBHost}   ${DBPort}
Suite Setup        Launch Browser
Suite Teardown     Close All Browsers
Test Template      Invalid Login


*** Test Cases ***



*** Keywords ***