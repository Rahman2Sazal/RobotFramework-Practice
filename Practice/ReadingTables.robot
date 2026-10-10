*** Settings ***

Library    SeleniumLibrary  



*** Variables ***
${browser}          chrome
${url}          https://testautomationpractice.blogspot.com/

*** Test Cases ***
GettingTableInfo
    Open Browser     ${url}        ${browser}          
    Maximize Browser Window 
    ${rows}=    Get Element Count  xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    ${columns}=     Get Element Count   xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th
    
    log to console  ${rows}
    log to console  ${columns}
    
    @{ListofColumns}      Create List 
    FOR     ${i}        IN RANGE   1    ${columns}    
    ${ColumnText}=    Get Text        xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th[${i}]   
    Log to console  ${ColumnText}
    END
    Sleep       1s
    
    @{ListofRows}      Create List  
    FOR     ${i}        IN RANGE   1    ${rows}    
    ${RowText}=    Get Text        xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[${i}]
    Log to console  ${RowText}
    END
    Sleep       1s
    
    table column should contain     xpath://*[@id="HTML1"]/div[1]/table     2       Author
    Log to console          "This test passed"
    Log to console      "The next test will not pass because-"
    table row should contain        xpath://*[@id="HTML1"]/div[1]/table     5       Learn JS
    


