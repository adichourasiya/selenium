*** Settings ***
Library           SeleniumLibrary

*** Testcases ***
Check the speed of your broadband
    Open Browser    url=http://www.fast.com
    Sleep    20
    Capture Page Screenshot
    Close Browser
