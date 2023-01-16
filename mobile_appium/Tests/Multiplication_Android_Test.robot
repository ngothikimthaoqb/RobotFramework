*** Settings ***
Library    AppiumLibrary
Resource    ../Page_Objects/Multiplication_Keyword.robot
Resource    ../App_Test/
Test Setup    Open calculator app
Test Teardown    Close Application


*** Test Cases ***
Verify multiplication of two integer numbers successfuly
    Caculate multiplication of two integer numbers
    Verify multiplication of two integer numbers successfuly