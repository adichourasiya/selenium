*** Settings ***
Documentation     You can customize speed of selenium step execution. This can be handy during demo.For more
...               http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
Library           SeleniumLibrary

*** Test Cases ***
Steps with different time intervals
    Open Browser    https://www.timeme.com/split-lap-timer.htm
    Maximize Browser Window
    Wait Until Element Is Visible    pRg    20s
    Click Element    pRg
    Click Element    iGf
    Set Selenium Speed    2 seconds
    Click Element    iGf
    Set Selenium Speed    3 seconds
    Click Element    iGf
    Set Selenium Speed    4 seconds
    Click Element    iGf
    Set Selenium Speed    5 seconds
    Click Element    pRg
