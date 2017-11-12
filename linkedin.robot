*** Settings ***
Library           Selenium2Library
Library           Dialogs

*** Test Cases ***
Add contacts by search
    Login
    Go to Search and add    TOKYO, Japan

Add contacts by Network
    Login
    Go to Network and add

For Test
    : FOR    ${i}    IN RANGE    999999
    \    Exit For Loop If    ${i} == 9
    \    Log    ${i}
    Log    Exited

*** Keywords ***
Login
    Open Browser    https://www.linkedin.com
    Maximize Browser Window
    Input Text    xpath=//*[@id="login-email"]    adichourasiya@gmail.com
    ${password} =    Get Value From User    Enter Password
    Input Password    xpath=//*[@id="login-password"]    ${password}
    Click Button    xpath=//*[@id="login-submit"]

Go to Network and add
    Go To    https://www.linkedin.com/mynetwork/
    Wait Until Element Is Visible    xpath=//button[@class='button-secondary-small']    10s
    Click Element    xpath=//button[@class='button-secondary-small']

Go to Search and add
    [Arguments]    ${searchword}=toronto
    Go To    https://www.linkedin.com/search/results/people/?facetNetwork=%5B"S"%5D&keywords=${searchword}
    Wait Until Element Is Visible    xpath=/html/body/div/div/div/div/div/div/div/div/div/div/ul/li/div/div/div/div/button    10s
    Click Element    xpath=/html/body/div/div/div/div/div/div/div/div/div/div/ul/li/div/div/div/div/button
    Click Button    xpath=//*[text()[contains(.,'Add a note')]]
    Input Text    xpath=//textarea[@id='custom-message']    Hi, \n I would very much like to have you join my LinkedIn network. \n Regards, \nAditya
    Click Button    xpath=//*[text()[contains(.,'Send invitation')]]

Read From Excel
    Open Excel    ${CURDIR}/${EXCEL_FILE_NAME}
    ${strColCount} =    Get Column Count    ${EXCEL_SHEET_NAME}
    Log To Console    \nCols are => ${strColCount}
    ${strRowCount} =    Get Row Count ${EXCEL_SHEET_NAME}
    Log To Console    \nRows are=> ${strRowCount}
    Set Test Variable    ${ROW_ID}    3
    : FOR    ${colIndex}    IN RANGE    1    ${strColCount}
    \    ${strTempColValue}    Read Cell Data By Coordinates    ${EXCEL_SHEET_NAME} ${colIndex} ${ROW_ID}
