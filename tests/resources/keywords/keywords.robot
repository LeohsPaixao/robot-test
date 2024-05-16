*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ../variables/variables.robot

*** Keywords ***

Ir para o Site
    Open Browser    ${url}    ${BROWSER}

Fazer login no Product Store
    Set Selenium Speed    ${DELAY}
    Click Element    id:signin2
    Input Text    id:sign-username    ${email}
    Input Text    id:sign-password    ${password}
    Click Element    css:.btn-primary