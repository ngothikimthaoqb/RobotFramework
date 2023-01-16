*** Settings ***
Library     AppiumLibrary
Resource    ../Test_Data/Config_Data.robot
Resource    ../Test_Data/Android_Data.robot

*** Variables ***

${number_1}    //android.widget.ImageButton[@content-desc="1"]
${number_8}    //android.widget.ImageButton[@content-desc="8"]
${mul}    	//android.widget.ImageButton[@content-desc="multiply"]
${equal}     //android.widget.ImageButton[@content-desc="equals"]
${result_label}    com.google.android.calculator:id/result_final
${result}    8


*** Keywords ***
Open calculator app
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    app=${APP}

Caculate multiplication of two integer numbers
    Wait Until Page Contains Element    ${mul}
    Click Element    ${number_1}
    Click Element    ${mul}
    Click Element    ${number_8}
    Click Element    ${equal}

Verify multiplication of two integer numbers successfuly
    Wait Until Element Is Visible    ${result_label}
	Element Should Be Visible     ${result_label}
    Element Text Should Be    ${result_label}     ${result}





