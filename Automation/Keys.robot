*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}   https://www.facebook.com/login/
${Driver}    chrome
*** Test Cases ***
Test1
    set selenium speed  2
    open browser    ${url}  ${Driver}
    maximize browser window
    press key   css=#email     \\16
    press key   css=#email      \\83
    press key   css=button._42ft[type='submit']     \\13
    #click button    css=button._42ft[type='submit']
    close browser
