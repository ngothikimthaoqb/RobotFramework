*** Settings ***
Library  SeleniumLibrary
Resource    ../resources/login_keyword.robot
Resource    ../resources/home_keyword.robot
Test Setup  Open Shopee homepage    https://shopee.vn/    Chrome
Test Teardown    Close Browser

*** Variables ***
${username_or_email}    ngothikimthaoqb@gmail.com
${password}             Kimthao1234
${invalid_password}     Kimthao12345
${username}             ngothao778
${login_url}            Đăng nhập tài khoản - Mua sắm Online | Shopee Việt Nam

*** Test Cases ***
Veify login successfully with valid username and password
    Close homepage popup
    Login    ${username_or_email}    ${password}
	Verify login successfully with valid username and password    ${username}

Veify login unsuccessfully with valid username and invalid password
    Close homepage popup
    Login    ${username_or_email}    ${invalid_password}
	Title Should Be    ${login_url}