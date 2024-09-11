*** Settings ***
Resource    ../resources/keywords/keywords.robot
Test Setup    Open the browser
Test Teardown    Out the browser

*** Test Cases ***

Cenário 1: Fazendo login com credenciais válidas
    [Tags]    formTest01
    Form Authentication Page
    Sign in with valid credentials

Cenário 2: Tentando fazer login com credenciais inválidas
    [Tags]    formTest02
    Form Authentication Page
    Sign in with invalid credentials
