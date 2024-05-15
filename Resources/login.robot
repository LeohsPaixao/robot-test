*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${email}    leoteste@email.com
${password}    123456
${url}    https://bugbank.netlify.app/


*** Keywords ***

Fazer login no sistema do bugbank
    Open Browser    ${url}    browser=chrome
    Input Text    name:email    ${email}
    Input Text    name:password    ${password}
    Click Element    class:otUnI