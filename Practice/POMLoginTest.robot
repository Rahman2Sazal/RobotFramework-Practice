*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot    


*** Variables ***
${Browser}          chrome
${SiteURL}         https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${username}         Admin
${password}         Admin123
${btn_Login}

*** Test Cases ***
LoginTest  
    Open My Browsers    ${SiteURL}  ${Browser} 
    Enter Username      ${username}  
    Enter Password      ${password} 
    Click SignIn        ${btn_Login}
    
