*** Settings ***
Resource    ../resources/keywords/keywords.robot
Test Setup    Open the browser
Test Teardown    Out the browser

*** Test Cases ***

Cenário 1: Adicionar um novo Elemento
    [Tags]    ElementTest01
    Add and Remove Elements Page
    Add New Element to Page

Cenário 2: Remover o elemento adicionado
    [Tags]    ElementTest02
    Add and Remove Elements Page
    Remove Element from Page
