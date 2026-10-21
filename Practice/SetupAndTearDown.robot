*** Settings ***

Suite Setup        Log to console   Launch Browser
Suite Teardown      Log to console  Close All Browsers
Test Setup       Log to console     Log in to application
Test Teardown    Log to console     Log out form application


*** Test Cases ***

TC1 Prepaid ReCharge
    Log To Console      This is prepaid recharge test case
    
TC2 Postpaid ReCharge
    Log To Console      This is postpaid recharge test case

TC3 Search
    Log To Console      This is search test case
 
TC4 Advanced Search
    Log To Console      This is advanced search test case
