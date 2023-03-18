*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser_Chrome}     https://testautomationpractice.blogspot.com/
${Alert_button}     //*[@id="HTML9"]/div[1]/button
*** Test Cases ***
Alert_1
    Alert
*** Keywords ***
Alert
    set selenium speed  2
    ${speed_check}  get selenium speed
    log to console  ${speed_check}
    open browser   ${Browser_Chrome}    chrome
    maximize browser window
    click button   ${Alert_button}
    handle alert    accept
    click button   ${Alert_button}
    handle alert    dismiss
    close browser