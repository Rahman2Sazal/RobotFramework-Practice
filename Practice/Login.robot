*** Settings ***

Library    SeleniumLibrary  



*** Variables ***


*** Test Cases ***
LoginTest
    create webdriver  executable_path= "E:\Study\Automation Robot Framework\chrome-win32\chrome-win32\chrome.exe"
    open browser https://demo.nopcommerce.com/  chrome  


                                                                 
*** Keywords ***
    LoginTest   


