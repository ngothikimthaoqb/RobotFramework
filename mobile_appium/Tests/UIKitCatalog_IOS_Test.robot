*** Settings ***
Library    AppiumLibrary
Resource    ../Page_Objects/UIKitCatalog_Keyword.robot
Test Setup    Open UIKitCatalog app
Test Teardown    Close Application


*** Test Cases ***
Verify go to views tab successfuly
    Go to views tab
    Verify go to views tab successfuly