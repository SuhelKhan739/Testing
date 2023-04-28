*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}   https://www.facebook.com/login/
${Driver}    chrome
*** Test Cases ***
Test Suit1
    set selenium speed  2
    ${speed}=   get selenium speed
    log to console   ${speed}
Test1
    set selenium implicit wait   10
    open browser    ${url}  ${Driver}
    maximize browser window
    Test with Arguments     suhelk739@gmail.com     pass121
    click button    css=button._42ft[type='submit']
    close browser
Test2
    set selenium implicit wait   10
    open browser    ${url}  ${Driver}
    maximize browser window
    Test with Arguments     suhelk.khan@gmail.com     1234567890
    wait until page contains element    css=button._42ft[type='submit']
    click button    css=button._42ft[type='submit']
    capture page screenshot     C:/Users/suhelk/PycharmProjects/Automation/Automation/snapshots/facebook.png
    close all browsers


*** Keywords ***
Test with Arguments
   [Arguments]  ${email}   ${pass}
   Input text   css=#email  ${email}
   input text   css=#pass   ${pass}