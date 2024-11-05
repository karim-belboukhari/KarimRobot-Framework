*** Settings ***
Documentation    This test case is to practice window switch and handle
Library          SeleniumLibrary

*** Variables ***
${url}           https://demo.automationtesting.in/Windows.html
${browser}       chrome

*** Test Cases ***
Checking Tabbed Window
    Open Browser    ${url}    ${browser}
    Minimize Browser Window
    Set Browser Implicit Wait    2 seconds
    Set Selenium Speed    1 seconds
    Click Button    xpath=//*[@id='Tabbed']/child::a/button
    Switch Window    url=https://www.selenium.dev/
    Click Element   xpath=
    Title Should Be   Selenium IDE · Open source record and playback test automation for the web
