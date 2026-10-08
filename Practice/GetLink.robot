*** Settings ***

Library    SeleniumLibrary  



*** Variables ***
${browser}          chrome
${url}          https://testautomationpractice.blogspot.com/



*** Test Cases ***
GetLink
    Open Browser     ${url}        ${browser}          
    Maximize Browser Window
    ${CountAllLinks}=   Get Element Count     xpath://a       
    Log To Console  ${CountAllLinks}
    @{ListofLinks}      Create List
    FOR     ${i}        IN RANGE   1    ${CountAllLinks}    
    ${LinkText}=    Get Text        xpath:(//a)[${i}]
    Log To Console   ${LinkText} 
    Sleep   1s
    END
   