*** Settings ***
Library     SeleniumLibrary
Default Tags  simple testing
*** Variables ***
${browser}  https://www.facebook.com/
*** Test Cases ***
Input Box Verify
   [Tags]  demo
   inputtext1
*** Keywords ***
inputtext1
    open browser    ${browser}  chrome
    Maximize Browser window
    ${speed}    Get Selenium Speed
    Log to console  ${speed}
    Set Selenium Speed  2
    ${email}    set variable    id:email
    Element should be enabled   ${email}
    Element should be Visible   ${email}
    input text    ${email}  suhelk739 @gmail.com
#    Wait until page contains elemeent   ${email}
    Clear Element Text  ${email}
#    Wait until page contains elemennt   close browser
    close browser


