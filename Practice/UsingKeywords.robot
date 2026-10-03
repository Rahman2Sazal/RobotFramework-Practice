*** Settings ***
Library    SeleniumLibrary  
Resource   ../Resources/Keywords.robot

*** Variables ***
${browser}      chrome
${url}          https://opensource-demo.orangehrmlive.com/web/index.php/auth/login



*** Test Cases ***
LaunchBrowser
    LaunchBrowser       ${url}    ${browser}  
    
InputingText    
    ${PageTitle}=   InputingText
    Log To Console    ${PageTitle}  
    sleep    5s
                                                                 
