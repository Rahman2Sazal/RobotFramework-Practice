*** Settings ***

Library    SeleniumLibrary  


*** Variables ***
${browser}      chrome
${url}          https://opensource-demo.orangehrmlive.com/web/index.php/auth/login


*** Keywords ***
Launch Browser
    Open Browser     ${url}      ${browser}    
    Maximize browser window
    Wait Until Element Is Visible   name:username
    
Close All Browsers
    SeleniumLibrary.Close All Browsers
    
Open Login Page
    Go to       ${url}
    Wait Until Element Is Visible   name:username


Input UserName
    [Arguments]     ${username}
    Input Text      name:username     ${username}

Input Password
    [Arguments]     ${password}
    Input Text      name:password     ${password}
    
Click Login Button
    click element       xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    
Click Logout
    click element       xpath:/html/body/div/div[1]/div[1]/header/div[1]/div[3]/ul/li/span/p
    click element       xpath:/html/body/div/div[1]/div[1]/header/div[1]/div[3]/ul/li/ul/li[4]/a
    
Error message should be visible
    page should contain     Invalid credentials