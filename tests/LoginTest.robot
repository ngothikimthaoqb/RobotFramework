*** Settings ***
Library  SeleniumLibrary
Resource    ../resources/LoginKeyword.robot
Resource    ../resources/HomeKeyword.robot
Test Setup       Open Shopee homepage    https://shopee.vn/    Chrome
Test Teardown    Close Browser

*** Variables ***
${url}                  https://shopee.vn/
${browser}              Chrome
${username_or_email}    ngothikimthaoqb@gmail.com
${password}             Kimthao1234
${invalid_password}     Kimthao12345
${username}             ngothao778

*** Test Cases ***
Veify login successfully with valid username and password
    Open Shopee homepage    ${url}     ${browser}
    Close homepage popup
    Login    ${username_or_email}    ${password}
    Sleep    2
	Verify login successfully with valid username and password    ${username}

Veify login unsuccessfully with valid username and invalid password
    Open Shopee homepage    ${url}     ${browser}
    Close homepage popup
    Login    ${username_or_email}    ${invalid_password}
	Verify login error message displayed