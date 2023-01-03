*** Settings ***
Library  SeleniumLibrary
Test Setup  Open browser    ${url}  chrome
Test Teardown  close browser

*** Variables ***
${url}  https://demo.guru99.com/test/newtours/index.php
${UN}   Xpath://input[@type='text']
${PASS}     name:password
@{Credentials}  UN=amdocs_188123   Pass=myTest123
${click}    name:submit
*** Test Cases ***
Test
    Guru99

*** Keywords ***
Guru99
    maximize browser window
    Wait Until Page Contains Element   ${UN}
    input text  ${UN}       @{Credentials} [UN]
    Wait Until Page Contains Element   ${PASS}
    input password  ${PASS}     @{Credentials} [Pass]
    Wait Until Page Contains Element   ${click}
    click element   ${click}
    Log     This execution is completed and done by %{username}