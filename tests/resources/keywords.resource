*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${email}    leoteste
${password}    123456
${URL}    http://the-internet.herokuapp.com/
${BROWSER}    headlesschrome
${DELAY}    3

*** Keywords ***

Open the browser
    [Arguments]    ${URL}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Out the browser
    Close Browser

Form Authentication Page
    Click Link    Form Authentication
    Page Should Contain    Login Page

Add and Remove Elements Page
    Click Link    Add/Remove Elements
    Page Should Contain    Add/Remove Elements
    Page Should Contain Button    xpath://button[contains(., 'Add Element')]

Sign in with valid credentials
    Input Text    username    tomsmith
    Input Text    password    SuperSecretPassword!
    Click Button  xpath://button[contains(., 'Login')]
    Page Should Contain    You logged into a secure area!

Sign in with invalid credentials
    Input Text    username    ${email}
    Input Text    password    ${password}
    Click Button   xpath://button[contains(., 'Login')]
    Page Should Contain   Your username is invalid!

Add New Element to Page
    Click Button    xpath://button[contains(., 'Add Element')]
    Element Should Be Visible    xpath=//div[@id='elements']/button[contains(., 'Delete')]

Remove Element from Page
    Add New Element to Page
    Click Button    xpath://button[contains(., 'Delete')]
    Element Should Not Be Visible    xpath=//div[@id='elements']/button[contains(., 'Delete')]
