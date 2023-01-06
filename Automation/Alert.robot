*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  https://testautomationpractice.blogspot.com/
${alert_button}     xpath://button[@onclick='myFunction()']
*** Test Cases ***
Alert11
    Alert1
*** Keywords ***
Alert1
    open Browser    ${Browser}  chrome
    ${Speed}    get selenium speed
    log to console  ${Speed}
    set selenium speed  2
    maximize browser window
    wait until page contains element    ${alert_button}
    click element   ${alert_button}
    handle alert    accept
    click element   ${alert_button}
    handle alert    dismiss
    click element   ${alert_button}
    handle alert    leave
    ${speed1}   get selenium speed
    log to console  ${speed1}
    close browser
