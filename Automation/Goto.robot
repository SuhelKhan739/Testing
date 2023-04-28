*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${google}   https://www.google.com/
${bing}     https://www.bing.com/
${driver}   chrome
*** Test Cases ***
Goto1
    Goto11
*** Keywords ***
Goto11
    set selenium speed  2
    open browser       ${google}   ${driver}
    maximize browser window
    ${loc}=     get location
    log to console  ${loc}
    go to     ${bing}
    ${loc}=     get location
    log to console  ${loc}
    go back
    close browser