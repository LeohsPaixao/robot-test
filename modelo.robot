*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Abrir Site
    Open Browser    https://www.google.com    browser=chrome

*** Test Cases ***
Cenário 1: Acessando o Site Google
    Abrir Site
