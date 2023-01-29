*** Settings ***
Library    AppiumLibrary
Resource    ../Page_Objects/Caculator_Keyword.robot
Test Setup    Open calculator app
Test Teardown    Close Application

*** Variables ***
${mul_result}     8
${minus_result}   7
${plus_result}    9      
${divide_result}    8

*** Test Cases ***
Verify multiplication of two integer numbers successfuly
    Caculate multiplication of two integer numbers
    Verify multiplication of two integer numbers successfuly     ${mul_result}

Verify subtraction of two integer numbers successfuly
    Caculate subtraction of two integer numbers
    Verify subtraction of two integer numbers successfuly     ${minus_result}

Verify addition of two integer numbers successfuly
    Caculate addition of two integer numbers
    Verify addition of two integer numbers successfuly     ${plus_result}

Verify division of two integer numbers successfuly
    Caculate division of two integer numbers
    Verify division of two integer numbers successfuly     ${divide_result}