*** Settings ***

Library    SeleniumLibrary  



*** Variables ***
${browser}          chrome
${url}          https://opensource-demo.orangehrmlive.com/web/index.php/auth/login



*** Test Cases ***
LoginTest
    Open Browser     ${url}        ${browser}          
    Sleep    10s
    LogInToApplication
    Sleep    5s



                                                                 
*** Keywords ***
 
LogInToApplication
    Input Text    xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    Admin
    Input Text    xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input    admin123
    Sleep   5s
    Click Element    xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
 
