*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ../variables/variables.robot

*** Keywords ***

Fazer login no sistema do bugbank
    Open Browser    ${url}    ${BROWSER}
    Set Selenium Speed    ${DELAY}
    Input Text    name:email    ${email}
    Input Text    name:password    ${password}
    Click Element    class:otUnI