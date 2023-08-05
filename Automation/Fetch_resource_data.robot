*** Settings ***
Library  SeleniumLibrary
Resource  ../Automation/Open browser and close browser.robot
Documentation  This is resouce file

*** Variables ***

*** Test Cases ***
give_values
    [Documentation]  This is giving values in the field
    set selenium speed   2
    Open_the_Browser   https://artoftesting.com/samplesiteforselenium   chrome
    input text  id:fname    Suhel Khanexit
    click button    id:idOfButton
    sleep   2
    execute javascript      window.scrollTo(0,2000)
    sleep   2
    mouse down  css=#myImage
    capture page screenshot     C:/Users/suhelk/PycharmProjects/Automation/Automation/snapshots/drag.png
    sleep   2
    mouse up    css=#targetDiv
    sleep   2
    fetch_loc
    fetch_source
    #close_the_Browser
*** Keywords ***
fetch_loc
    set selenium speed   2
    ${loc}=     get location
    log  ${loc}
fetch_source
    set selenium speed   2
    ${source}=  get source
    log to console      ${source}