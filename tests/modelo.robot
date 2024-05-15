*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${search}    Lionel Messi
${url}    https://www.google.com
${result}    xpath://h3[@class='LC20lb MBeuO DKV0Md']


*** Keywords ***
Abrir Site
    Open Browser    ${url}    browser=chrome

Pesquisar
    Click Element    xpath://textarea[@id='APjFqb']
    Input Text    id:APjFqb    ${search}
    Click Element    css:input.gNO89b

Validar a Pesquisa
    Wait Until Element Is Visible    ${result}

*** Test Cases ***
Cenário 1: Acessando o Site Google
    Abrir Site

Cenário 2: Pesquisando um assundo no Google
    Abrir Site
    Pesquisar
    Validar a Pesquisa
