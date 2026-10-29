*** Settings ***
Library    SeleniumLibrary

Variables   ../PageObjects/Locators.py

*** Keywords ***
Open My Browsers
        [Arguments]     ${SiteURL}      ${Browser}
        Open Browser    ${SiteURL}      ${Browser}  
        Maximize browser window
Enter Username
       [Arguments]      ${username}          
       Wait Until Element Is Visible    ${txt_Username}    
       Input text      ${txt_Username}   ${username}    
Enter Password  
       [Arguments]      ${password}     
       Input text      ${txt_Password}   ${password}     
Click SignIn
       Click button    ${btn_Login}
Verify successfull login
        Title should be     OrangeHRM
Close my browsers
        Close all browsers
       