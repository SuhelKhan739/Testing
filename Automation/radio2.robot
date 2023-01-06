*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
*** Test Cases ***
radio_check
    radio1
*** Keywords ***
radio1
    open browser    ${url}  chrome
    maximize browser window
    input text  xpath://input[@name='firstname']    Suhel
    sleep   2
    input text  xpath://input[@name='lastname']     khan
    sleep   2
    select radio button     sex     Male
    sleep   2
    select radio button     exp     1
    sleep   2
    input text  xpath:(//input[@type='text'])[3]    01/06/2023
    sleep   2
    select check box    Automation Tester
    sleep   2
    Select From List By index     continents    3