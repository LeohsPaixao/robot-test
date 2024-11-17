*** Settings ***
Resource    ../resources/keywords.resource
Test Setup    Open the browser    ${URL}
Test Teardown    Out the browser

*** Test Cases ***

Cenário 1: Verificar Imagens Quebradas
    [Tags]  brokenImagesTest01
    Verify Broken Images