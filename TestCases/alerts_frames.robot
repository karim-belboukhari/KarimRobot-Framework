*** Settings ***
Documentation   this tcs made for alert handling and frames AND including for loop on browsers
Library    SeleniumLibrary

*** Variables ***
${url}   https://www.selenium.dev/selenium/web/alerts.html#
@{browser}    chrome    edge
*** Test Cases ***
Alert handling
    FOR    ${browser}    IN    @{browser}
        Open Browser    ${url}   ${browser}
        Maximize Browser Window
        Set Selenium Speed    1 seconds
        Click Link    id=alert
        Handle Alert    accept 
        Click Element    id=empty-alert
        Handle Alert    dismiss
        Click Element    id=prompt
        Input Text Into Alert    check
        Click Element    id=empty-alert
        Handle Alert    accept
        Close Browser   
    END
Frame handling
    FOR    ${browser}    IN    @{browser}
        Open Browser    ${url}   ${browser}
        Maximize Browser Window
        Set Selenium Implicit Wait    1 seconds
        Select Frame   name=iframeWithAlert
        Click Element    id=alertInFrame
        Handle Alert    accept
        Unselect Frame
        Close Browser
    END    
    
        





