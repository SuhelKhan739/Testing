*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  https://testautomationpractice.blogspot.com/
*** Test Cases ***
Alert11
    Alert1
*** Keywords ***
Alert1
    open Browser    ${Browser}  chrome
    set selenium speed  2
    maximize browser window
    wait until page contains element    xpath://button[@onclick='myFunction()']
    click element   xpath://button[@onclick='myFunction()']
    handle alert    accept
    click element   xpath://button[@onclick='myFunction()']
    handle alert    dismiss
    click element   xpath://button[@onclick='myFunction()']
    handle alert    leave