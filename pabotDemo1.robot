*** Settings ***
Documentation     Prerequisite
...               - SeleniumLibrary
...               - pip install robotframework-pabot
...
...
...               Go to folder and Run
...               pabot --processes 2 \ \ --outputdir c:\pabot-demo
...               eports\ \ \ \ pabot*.robot
...
...
...               http://testnblog.com/running-robot-test-cases-in-parallel-pabot/
Library           SeleniumLibrary

*** Testcases ***
Check the speed of your broadband
    Open Browser    url=http://www.fast.com
    Sleep    20
    Capture Page Screenshot
    Close Browser
