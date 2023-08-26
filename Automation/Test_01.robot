*** Settings ***
Library  SeleniumLibrary
Library  Collections
*** Variables ***
${url}  https://www.jio.com/
${chrome}   chrome
${mobile}   xpath:(//a[@class='j-link j-text-body-s-bold is-text header_item-links_link'])[1]
${ligin}    xpath://div[@class='j-avatar j-avatar-kind__default j-avatar-size__small j-avatar__is-clickable']
${enter PH}  id:inputField
${gererate button}      xpath://*[@id="__next"]/div[2]/section/section/section[2]/div/section[1]/section/div[2]/button
*** Test Cases ***
Recharge
    [Documentation]  This code is for Login
    set selenium speed  2
    set selenium implicit wait  10
    ${speed}=   get selenium speed
    log to console   The selenium speed is  ${speed}
    open browser    ${url}   ${chrome}
    maximize browser window
    execute javascript  window.scrollTo(0,1000)
    execute javascript  window.scrollTo(0,0)
    click element   ${mobile}
    click element   ${ligin}
    input text      ${enter PH}    5265254587
    click button    ${gererate button}
    close browser



*** Keywords ***
