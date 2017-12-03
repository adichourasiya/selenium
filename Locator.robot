*** Settings ***
Documentation     Prerequisite: SeleniumLibrary
...
...               This demo will show how to use different element locators in Robot Framework.
...               To understand it :
...               1. Open https://www.google.ca using chrome . Now right click and inspect the google search text box.
...               2. Notice value of different attributes such as ID , name . Now right click over the ID and go to Copy > Copy XPath and save it somewhere.
Library           SeleniumLibrary

*** Test Cases ***
Using Id
    Open Browser    https://www.google.ca
    Input Text    id=lst-ib    Entering this text using element id locator

Using name
    Open Browser    https://www.google.ca
    Input Text    q    Entering this text using element name locator

Using Xpath
    Open Browser    https://www.google.ca
    Input Text    //*[@id="lst-ib"]    Entering this text using element XPath locator
