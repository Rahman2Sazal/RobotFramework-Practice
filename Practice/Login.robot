*** Settings ***

Library    SeleniumLibrary  



*** Variables ***




*** Test Cases ***
LoginTest
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome    
    Sleep    10s
    Input Text    xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    Admin
    Input Text    xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input    admin123
    Sleep   5s
    Click Element    xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep    5s



                                                                 
*** Keywords ***
 


