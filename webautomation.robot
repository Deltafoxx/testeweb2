*** Settings ***
Documentation    Web test 2
Resource         resource.robot

Suite Setup       Abrir o navegador
Suite Teardown    Fechar o navegador


 
*** Test Cases ***
Caso de Teste 02: Pesquisar produto existente
    [Tags]            PESQUISAR
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "itemnãoexistente" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se mensagem "No results were found for your search "itemnãoexistente"" é exibida
