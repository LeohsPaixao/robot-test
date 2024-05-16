*** Settings ***
Resource    ../resources/keywords/keywords.robot
Library    SeleniumLibrary
Library    String
Test Setup    Fazer login no sistema do bugbank

*** Variables ***


*** Keywords ***

Test
    Log To Console    teste

*** Test Cases ***
Cenário 1: Tela principal do bugbank
    Test

