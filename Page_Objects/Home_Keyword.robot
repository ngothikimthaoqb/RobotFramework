*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${close_button}     dom:document.querySelector('shopee-banner-popup-stateful').shadowRoot.querySelector('.shopee-popup__close-btn')

*** Keywords ***
Open Shopee homepage
    [Arguments]     ${url}      ${browser}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

Close homepage popup
	Wait Until Element Is Visible    ${close_button}
	Click Element    ${close_button}
	Wait Until Element Is Not Visible     ${close_button}