*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${SERVER}         https://demos6.softaculous.com/Nibbleblog/admin.php
${BROWSER}        Firefox
${DELAY}          0
${VALID USER}     admin
${VALID PASSWORD}    pass
${LOGIN URL}      ${SERVER}
${WELCOME URL}    https://demos6.softaculous.com/Nibbleblog/admin.php?controller=dashboard&action=view
${ERROR URL}      https://demos6.softaculous.com/Nibbleblog/admin.php

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Nibbleblog

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button    Login

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    Nibbleblog
