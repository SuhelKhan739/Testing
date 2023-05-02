*** Settings ***

*** Variables ***

*** Keywords ***
Setup_for_TC
    [Arguments]      ${url}    ${Driver}
    open browser    ${url}  ${Driver}
    maximize browser window
Teardown_for_TC
    ${Title}=   get title
    close browser
