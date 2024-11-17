*** Settings ***
Resource    ../resources/keywords.resource
Test Setup    Open the browser    ${URL}
Test Teardown    Out the browser

*** Test Cases ***

Cenário 1: Marcar E Validar Checkbox
    [Tags]    checkboxTest
    Checkbox Page
    Marked the First Checkbox