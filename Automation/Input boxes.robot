*** Settings ***
Library     SeleniumLibrary
Default Tags  simple testing
*** Variables ***
${browser}  https://www.facebook.com/
*** Test Cases ***
Input Box Verify
    [Tags]  demo
    open browser    ${browser}  chrome
    Maximize Browser window
    ${email}    set variable    id:email

    Element should be enabled   ${email}
    Element should be Visible   ${email}

    input text    ${email}  suhelk739 @gmail.com
    sleep   5
    Clear Element Text  ${email}
    sleep   5
    close browser

