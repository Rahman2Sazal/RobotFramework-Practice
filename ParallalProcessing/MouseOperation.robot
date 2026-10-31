*** Settings ***

Library    SeleniumLibrary  



*** Variables ***
${browser}          chrome
${url}          https://swisnl.github.io/jQuery-contextMenu/demo.html



*** Test Cases ***
MouseActions
    Open Browser     ${url}        ${browser}          
    maximize browser window
    sleep   3
    
    #Right click
    Open Context Menu              xpath=/html/body/main/p/span
    sleep   3
    
    #Doucble Click
    go to       https://testautomationpractice.blogspot.com/
    sleep   3
    Double Click Element       xpath=/html/body/div[4]/div[2]/div[2]/div[2]/div[2]/div[2]/div[2]/div/div[4]/div[3]/div/aside/div/div[7]/div[1]/button
    
   #Drag and Drop
   Drag And Drop      xpath=/html/body/div[4]/div[2]/div[2]/div[2]/div[2]/div[2]/div[2]/div/div[4]/div[3]/div/aside/div/div[8]/div[1]/div[1]/p      //*[@id="droppable"]
   sleep        3
    