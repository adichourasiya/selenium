*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Demo phantomJS
    [Documentation]    Demo for PhantomJS. Prerequisites:
    ...    - PhantomJS.exe in the python27
    ...    - SeleniumLibrary Installed
    Open Browser    https://www.google.ca    phantomjs
    Maximize Browser Window
    Title Should Be    Google
    Capture Page Screenshot

Hello chrome headless
    [Documentation]    prerequisites:
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${options.set_binary}=    Set Variable    set_binary=C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
    ${options.add_argument}=    Set Variable    add_argument=--headless
    Create Webdriver    Chrome    chrome_options=${options}
    Open Browser    http://www.google.com    chrome
    Wait Until Page Contains    ffgdfgdfgdfgdfg
    Close Browser

XBFB
    [Documentation]    prerequisites:
    ...
    ...    - pip install xvfbwrapper
    ...    - pip install robotframework-xvfb
    Start Virtual Display    1920    1080
    Open Browser    http://google.com
    Set Window Size    1920    1080
    ${title}=    Get Title
    Should Be Equal    Google    {title}
    [Teardown]    Close Browser
