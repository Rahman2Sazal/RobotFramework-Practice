*** Settings ***

Suite Setup        Log to console   Launch Browser
Suite Teardown      Log to console  Close All Browsers
Test Setup       Log to console     Log in to application
Test Teardown    Log to console     Log out form application


*** Test Cases ***
TC1 User Registration Test
    [Tags]    Sanity
    Log to console  This is user reg testT
    Log to console  User reg test is over
    
TC2 LoginTest
    [Tags]    regression
    Log to console  This is login test
    Log to console  Login Test is over
    
TC3 Chage User setting
    [Tags]    Regression
    Log to console  This is user changing test case
    Log to console  Changing user test is over

TC4 Logout Test
    [Tags]    Sanity
    Log to console  This is logout test
    Log to console  Logout test is finished
