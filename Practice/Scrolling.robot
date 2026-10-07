*** Settings ***

Library    SeleniumLibrary  



*** Variables ***
${browser}          chrome
${url}          https://testautomationpractice.blogspot.com/



*** Test Cases ***
ScrollingTest
    Open Browser     ${url}        ${browser}          
    Execute Javascript      window.scrollTo(0,1500)
    Sleep   2s
   
    Scroll Element Into View        xpath=//*[@id="HTML3"]/div[1]/div/button
    Sleep    2s
    Execute Javascript      window.scrollTo(0,document.body.scrollHeight)
    Sleep    2s
    
    Execute Javascript      window.scrollTo(0,-document.body.scrollHeight)
        Sleep   2s
