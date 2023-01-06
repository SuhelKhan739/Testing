*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}  https://artoftesting.com/samplesiteforselenium
${Chrome}   chrome
#${Radio_ID}     software
#${RADIO_Value}      Excel

*** Test Cases ***
RADIO
    Radio_select

*** Keywords ***
Radio_select
    open browser    ${URL}  ${Chrome}
    ${Implicit}     get selenium implicit wait
    log to console  ${Implicit}
    set selenium implicit wait  5
    sleep   5sec
    maximize browser window
    sleep   5sec
    select radio button     gender  male
    sleep   3sec
    select checkbox     Automation
    select checkbox     Performance
    select from list by value   testingDropdown     Manual
    get selenium implicit wait
    log to console      ${Implicit}
    close browser