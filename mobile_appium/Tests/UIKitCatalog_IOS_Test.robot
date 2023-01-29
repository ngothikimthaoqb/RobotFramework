*** Settings ***
Library    AppiumLibrary
Resource    ../Page_Objects/UIKitCatalog_Keyword.robot
Test Setup    Open UIKitCatalog app
Test Teardown    Close Application


*** Test Cases ***
Verify go to views tab successfuly
    Go to views tab
    Verify go to views tab successfuly

Verify go to menu button successfuly
    Go to menu button
    Verify go to menu button successfuly

Verify go to stacks view tab successfuly
    Go to stacks view tab
    Verify go to stacks view tab successfuly

Verify go to date picker tab successfuly
    Go to date picker tab
    Verify go to date picker tab successfuly