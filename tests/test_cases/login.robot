*** Settings ***
Resource    ../resources/keywords/keywords.robot
Library    SeleniumLibrary
Library    String
Test Setup    Ir para o Site

*** Test Cases ***

Cenário 1: Fazendo login no site
    Fazer login no Product Store

    