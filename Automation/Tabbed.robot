*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
Tabbed11
    Browser1
    Browser2
    switch browser  1
    ${Title}=   get title
    log to console  ${Title}
    switch browser  2
    ${Title1}=  get title
    log to console  ${Title1}
    close all browsers
*** Keywords ***
Browser1
    open browser    https://demo.automationtesting.in/Windows.html  chrome
    set selenium speed  2
    maximize browser window
    click element   xpath:(//button[@class='btn btn-info'])[1]
Browser2
    open browser   https://www.selenium.dev/     chrome
    maximize browser window
    click element   xpath://*[@id="main_navbar"]/ul/li[3]/a/span
