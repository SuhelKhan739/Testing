*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Resources1.robot

*** Variables ***

*** Test Cases ***
call_from_resources
    without keyword
    sleep   2
    click link  xpath://*[@id="ja-search"]/ul/li/a
    sleep   2
    close browser
*** Keywords ***
