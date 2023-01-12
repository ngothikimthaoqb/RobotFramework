*** Settings ***
Library  SeleniumLibrary
Resource    ../Page_Objects/Home_Keyword.robot
Resource    ../Page_Objects/Login_Keyword.robot
Resource    ../Test_Data/Config_Data.robot
Resource    ../Test_Data/Account_Data.robot

Test Setup  Open Shopee homepage    ${URL}    Chrome
Test Teardown    Close Browser

*** Variables ***
${login_title}  Đăng nhập tài khoản - Mua sắm Online | Shopee Việt Nam

*** Test Cases ***
Veify login successfully with valid username and password
    Close homepage popup
    Login    ${USERNAME_OR_EMAIL}    ${PASSWORD}
	Verify login successfully with valid username and password    ${USERNAME}

Veify login unsuccessfully with valid username and invalid password
    Close homepage popup
    Login    ${USERNAME_OR_EMAIL}    ${INVALID_PASSWORD}
	Title Should Be    ${login_title}