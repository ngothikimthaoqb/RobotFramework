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

${control_tab}    //XCUIElementTypeStaticText[@name="Controls"]
${button_tab}    //XCUIElementTypeStaticText[@name="Buttons"]
${menu_button}    //XCUIElementTypeStaticText[@name="Menu Buttons"]
${green_tab}    //XCUIElementTypeStaticText[@name="Green"]

${stacks_view_tab}    //XCUIElementTypeStaticText[@name="Stack Views"]
${show_or_hiding_view_button}    //XCUIElementTypeStaticText[@name="Showing/hiding views"]


${pickers_tab}    //XCUIElementTypeStaticText[@name="Pickers"]
${date_picker}    //XCUIElementTypeStaticText[@name="Date Picker"]
${year_picker}    //XCUIElementTypeButton[@name="Show year picker"]

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

Go to menu button
    Wait Until Page Contains Element    ${back_button}
    Click Element    ${back_button}
    Click Element    ${control_tab}
    Click Element    ${button_tab}
    Click Element    ${menu_button}

Verify go to menu button successfuly
    Wait Until Element Is Visible    ${green_tab}
	Element Should Be Visible     ${green_tab}

Go to stacks view tab
    Wait Until Page Contains Element    ${back_button}
    Click Element    ${back_button}
    Click Element    ${view_tab}
    Click Element    ${stacks_view_tab}

Verify go to stacks view tab successfuly
    Wait Until Element Is Visible    ${show_or_hiding_view_button}
	Element Should Be Visible     ${show_or_hiding_view_button}

Go to date picker tab
    Wait Until Page Contains Element    ${back_button}
    Click Element    ${back_button}
    Click Element    ${pickers_tab}
    Click Element    ${date_picker}

Verify go to date picker tab successfuly
    Wait Until Element Is Visible    ${year_picker}
	Element Should Be Visible     ${year_picker}