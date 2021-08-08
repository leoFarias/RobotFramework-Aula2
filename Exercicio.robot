*** Settings ***
Documentation    Exercicio1
Library          SeleniumLibrary


*** Variables ***
${NAVEGADOR}               Chrome
${URL}                     https://developer.clashroyale.com/#/register
${URL_LOGIN}               https://developer.clashroyale.com/#/login
${URL_ACCOUNT}             https://developer.clashroyale.com/#/new-key
${LOGIN_NAME}              id=name
${LOGIN_EMAIL}             id=email
${LOGIN_SENHA}             id=password
${LOGIN_BTO}               class=ladda-label
${KEY_DESCIPTION}          id=description
${KEY_IP}                  id=range-0
${MY_KEY}                  class=api-key__headline
${VALIDADOR}               class=lead
${VALIDAR_KEY}             class=dev-site-icon dev-site-icon-check


*** Tasks ***
Tarefa 2:
    [Documentation]    Fazer Login
    LOGIN
    CHAVE


*** Keywords ***
LOGIN
    [Documentation]    Navegador
    Open Browser    ${URL_LOGIN}      ${NAVEGADOR}
    Maximize Browser Window
    Wait Until Element Is Visible    ${LOGIN_BTO}
    Input Text    ${LOGIN_EMAIL}    ugr67847@eoopy.com
    Input Text    ${LOGIN_SENHA}    1404guifcferf
    Click Element     ${LOGIN_BTO}

CHAVE
    [Documentation]    Gerar Chave
    Wait Until Element Is Visible    ${VALIDADOR}
    Go To    ${URL_ACCOUNT}
    Wait Until Element Is Visible    ${LOGIN_BTO}
    Input Text    ${LOGIN_NAME}    CR7
    Input Text    ${KEY_DESCIPTION}    TESTE
    Input Text    ${KEY_IP}    45.185.73.179
    Click Element    ${LOGIN_BTO}
    Wait Until Element Is Enabled    ${MY_KEY}
    Click Element    ${MY_KEY}
