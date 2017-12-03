*** Settings ***
Documentation     This demo will write current date time in a newly created file
...
...               Prerequisite:
...               following builtin library[no need to install]
...               OperatingSystem library
...               DateTime library
Library           OperatingSystem
Library           DateTime

*** Test Cases ***
Create Text file
    ${TimeNow}=    Get Time    timestamp    NOW
    Append To File    time.txt    ${TimeNow} /n
    Sleep    2s
    ${TimeNow}=    Get Time    timestamp    NOW
    Append To File    time.txt    ${TimeNow}
