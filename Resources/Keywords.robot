*** Settings ***

Library    SeleniumLibrary  



*** Variables ***
${browser}      chrome
${url}          https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
LaunchBrowser
    [Arguments]     ${appurl}       ${appbrowser}
    Open Browser     ${appurl}        ${appbrowser}             
    Wait Until Element Is Visible   xpath://html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input

InputingText
    Input Text    xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input   Admin
    Input Text    xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input    admin123
    Click Element    xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button 
    ${title}=   get title
    [Return]     ${title}