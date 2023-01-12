*** Settings ***
Library     SeleniumLibrary
Resource    ../HomeKeyword.robot

Test Setup  Open Shopee homepage
Test Teardown    Close Browser