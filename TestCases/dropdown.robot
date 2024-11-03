*** Settings ***
Documentation     This test case is for practicing checkbox testing
Library           SeleniumLibrary

*** Variables ***
${url}            https://seleniumpractise.blogspot.com/
${browser}        chrome

*** Test Cases ***
Working on dropdown
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Select From List By Label    id=tools1    Cucumber
    Sleep    2
    Select From List By Index    id=tools1    1

*** Keywords ***
