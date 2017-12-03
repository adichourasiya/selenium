*** Settings ***
Default Tags
Library           String

*** Test Cases ***
For Loop
    [Documentation]    Will write values 1-9 (in range)
    [Tags]    NoTest
    : FOR    ${INDEX}    IN RANGE    1    10
    \    Log    ${INDEX}

For Loop - Exit condition
    [Documentation]    Will Exit For Loop when condition are met
    [Tags]    NoTest
    @{ITEMS}    Create List    1    2    3
    : FOR    ${ELEMENT}    IN    @{ITEMS}
    \    Log    ${ELEMENT}
    \    Run Keyword If    '${ELEMENT}' == '2'    Exit For Loop

Loop through string elements
    [Documentation]    Will log all elements in string
    [Tags]    NoTest
    @{StringItems}    Create List    string1    string2    string3    string4
    : FOR    ${Item}    IN    @{StringItems}
    \    Log    ${Item}
