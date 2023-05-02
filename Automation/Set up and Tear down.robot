*** Settings ***
Library  SeleniumLibrary
Documentation  this is press kays file
Resource  ../Resources/Resources for Keys.robot
Test Setup  Setup_and_Teardown
Test Teardown  Teardown_for_TC
Test Timeout  50
*** Variables ***
${url}   https://www.facebook.com/login/
${Driver}    chrome
*** Test Cases ***
Setup_and_Teardown
    [Documentation]  This is Testing of Key operation for the ${url} url
    [Timeout]  50
    set selenium speed  2
    [Setup]  Setup_for_TC   ${url}  ${Driver}
    press keys   css=#email     Suhel
    press keys   css=#email      Khan
    press keys  css=button._42ft[type='submit']     \\13
    #click button    css=button._42ft[type='submit']
    [Teardown]      Teardown_for_TC