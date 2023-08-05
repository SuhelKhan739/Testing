*** Settings ***
Library  SeleniumLibrary
Documentation  This is for setting the browser
*** Keywords ***
Open_the_Browser
    [Arguments]  ${url}     ${browser}
    open browser    ${url}      ${browser}
    maximize browser window

close_the_Browser
    close browser
