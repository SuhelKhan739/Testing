*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}      https://www.amazon.in/ref=nav_logo
${chrome}   chrome
*** Test Cases ***
scroll
    set selenium speed      2
    open browser    ${url}      ${chrome}
    maximize browser window
    execute javascript      window.scrollTo(0,1000)
    execute javascript      window.scrollTo(0,3000)
    execute javascript      window.scrollTo(0,0000)
    close browser
*** Keywords ***
