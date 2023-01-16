*** Settings ***
Library     AppiumLibrary
Resource    ../Test_Data/Config_Data.robot
Resource    ../Test_Data/IOS_Data.robot

*** Variables ***

${back_button}    //*[@name="UIKitCatalog"]
${view_tab}    //XCUIElementTypeStaticText[@name="Views"]
${text_view_tab}    //XCUIElementTypeStaticText[@name="Text View"]
${text_view_text}   Text View
${result_label}    //XCUIElementTypeStaticText[@name="Text View"]


*** Keywords ***
Open UIKitCatalog app
    Open Application    ${REMOTE_URL}    udid=${UDID}   automationName=${AUTOMATION_NAME}   platformName=${PLATFORM_NAME}      bundleId=${BUNDLEID}    deviceName=${DEVICE_NAME}

Go to views tab
    Wait Until Page Contains Element    ${back_button}
    Click Element    ${back_button}
    Click Element    ${view_tab}
    Click Element    ${text_view_tab}

Verify go to views tab successfuly
    Wait Until Element Is Visible    ${result_label}
	Element Should Be Visible     ${result_label}
    Element Value Should Be    ${result_label}     ${text_view_text}
