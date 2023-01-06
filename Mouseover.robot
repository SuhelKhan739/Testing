*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Mouse
    Mouseover11
*** Keywords ***
Mouseover11
    open browser    https://www.grazitti.com/   chrome
    Maximize browser window
    mouse over  xpath:/html/body/div[1]/div[2]/div/div/div[2]/ul/li[3]/a
    sleep   5
    mouse over   xpath://*[contains(text(),'Blog')]
    sleep  2
    mouse over   xpath://*[contains(text(),'Datasheet')]
    sleep   2
    click element   xpath://*[contains(text(),'Blog')]
