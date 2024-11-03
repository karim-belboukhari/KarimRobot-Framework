*** Settings ***
Documentation     This test case is for practicing with wait and speed settings.
Library           SeleniumLibrary

*** Variables ***
${url}            https://demowebshop.tricentis.com/register
${browser}        chrome
${page_title}     

*** Test Cases ***
Registration 
    Open Browser               ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed         2 seconds
    Select Radio Button        Gender   M
    Input Text                 id=FirstName    karim
    Input Text                 id=LastName     belboukhari
    Input Text                 id=Email        uhhubuvyfffuuuuh@gmail.com
    Input Text                 id=Password     karim@1234
    Input Text                 id=ConfirmPassword    karim@1234
    Click Button               id=register-button
    Wait Until Page Contains   Your registration completed    timeout=10 seconds
    ${page_title}=             Get Title
    Should Be Equal            ${page_title}    Demo Web Shop. Register
