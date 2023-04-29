*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  https://www.thetestingworld.com/
${browser}  chrome

*** Keywords ***
without keyword
    set selenium speed  2
    open browser    ${url}  ${browser}
    maximize browser window
