*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.thetestingworld.com/
${chrome}   chrome
*** Test Cases ***
Waits
    set selenium speed  2
    open browser    ${url}  ${chrome}
    maximize browser window
    wait until page contains    TUTORIAL
    mouse over      xpath://*[@id="menu516"]
    wait until page contains element    xpath://*[@id="menu538"]/span
    wait until element contains     xpath://*[@id="menu538"]/span   FUNCTIONAL AUTOMATION
    mouse over      xpath://*[@id="menu538"]/span
    click element   xpath://*[@id="menu538"]/span
    close browser
*** Keywords ***
