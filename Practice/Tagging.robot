*** Settings ***

Suite Setup        Log to console   Launch Browser
Suite Teardown      Log to console  Close All Browsers
Test Setup       Log to console     Log in to application
Test Teardown    Log to console     Log out form application


*** Test Cases ***
TC1 User Registration Test
    Log to console  This is user reg test
    Log to console  User reg test is over
