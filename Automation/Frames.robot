*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
Frames11
    Frames1
*** Keywords ***
Frames1
    Open browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html    chrome
    maximize browser window
    set selenium speed  2
    select frame    packageListFrame    #we should give frame name
    click link   xpath:/html/body/main/ul/li[7]/a
    unselect frame
    select frame    packageFrame        #we should give frame name
    click link  xpath:/html/body/main/div/section[1]/ul/li[1]/a