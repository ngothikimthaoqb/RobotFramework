*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${login_link}   xpath://a[text()='Đăng Nhập']
${username_or_email_input}     xpath://input[@name='loginKey']
${password_input}   xpath://input[@name='password']
${login_button}     xpath://button[text()='Đăng nhập']
${username_label}   xpath://div[@class='navbar__username']
${login_error_message}  xpath://div[text()='Tên tài khoản của bạn hoặc Mật khẩu không đúng, vui lòng thử lại']

*** Keywords ***
Login
    [Arguments]     ${username_or_email}    ${password}
    Click Element    ${login_link}
    Wait Until Page Contains Element    ${username_or_email_input}
    Input Text    ${username_or_email_input}    ${username_or_email}
    Input Password    ${password_input}   ${password}
	Wait Until Element Is Enabled    ${login_button}
    Click Element    ${login_button}
    Wait For Condition	return document.readyState == "complete"

Verify login successfully with valid username and password
	[Arguments]     ${username}
	Wait Until Element Is Visible    ${username_label}
	Element Text Should Be    ${username_label}     ${username}

Verify login error message displayed
	Wait Until Element Is Visible    ${login_error_message}
	Element Should Be Enabled    ${login_error_message}


