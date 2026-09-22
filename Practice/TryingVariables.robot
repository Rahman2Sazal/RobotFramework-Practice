*** Settings ***
Library    OperatingSystem


*** Keywords ***


*** Variables ***
${myvariable}       my test variable
${my2ndvariable}    my 2nd variable

*** Test Cases ***
TEST
    Log   ${myvariable}
    Log    ${my2ndvariable} 