*** Settings ***
Documentation     This test case is for practicing with the Robot Framework
Library           SeleniumLibrary
Library           OperatingSystem  # For directory management

*** Variables ***
${url}            https://ecommerce-playground.lambdatest.io/index.php?route=account/login
${browser}        chrome
${SCREENSHOT_DIR}    .\\Screenshots
${RESULTS_DIR}       .\Reports\Results 

*** Test Cases ***
Valid_Login_Test
    [Tags]    valid_login
    Open Browser   ${url}    ${browser} 
    Maximize Browser Window
    Set Selenium Speed    1seconds
    Input Text     id:input-email    karim@example.com
    Input Text     id:input-password    karim@1234   
    Click Button   xpath://*[@type="submit" and @value="Login"]
    Capture Element Screenshot    xpath://*[@type="submit" and @value="Login"]  ${SCREENSHOT_DIR}${/}login_CTA.png
    Capture Page Screenshot  ${SCREENSHOT_DIR}${/}ecran.png
    Close Browser

Invalid_Login_Test
    [Tags]    invalid_login
    Open Browser   ${url}    ${browser} 
    Maximize Browser Window
    Set Selenium Speed    2seconds
    Input Text     id:input-email    invalid_email@example.com
    Input Text     id:input-password    invalid_password    
    Click Button   xpath://*[@type="submit" and @value="Login"]  
    Capture Page Screenshot  ${SCREENSHOT_DIR}${/}invalid_login.png
    Close Browser

*** Keywords ***
Create Directories
    [Documentation]    Creates the screenshot and results directories if they don't exist.
    Run Keyword If    not Directory Exists    ${SCREENSHOT_DIR}    Create Directory    ${SCREENSHOT_DIR}
    Run Keyword If    not Directory Exists    ${RESULTS_DIR}    Create Directory    ${RESULTS_DIR}
