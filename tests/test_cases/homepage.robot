*** Settings ***
Resource    ../resources/keywords/keywords.robot
Library    SeleniumLibrary
Library    String
Test Setup    Ir para o Site

*** Test Cases ***

Cenário 1: Validando a tela inicial
    Validar a pagina inicial do site

Cenário 2: Colocando um produto no carrinho
    Selecionar o primeiro produto
    Colocar no carrinho o produto selecionado
