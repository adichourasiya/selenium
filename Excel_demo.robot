*** Settings ***
Documentation     Prerequisite
...               - pip install robotframework-excellibrary
Library           ExcelLibrary

*** Test Cases ***
Write Time to Excel
    Put String To Cell    TestSheet1    0    0    Hello
    Open Excel    C:/Python27/ExcelRobotTest/ExcelRobotTest.xls
    ${cellvalue}=    Read Cell Data By Coordinates    TestSheet1    0    0
    log    ${cellvalue}
