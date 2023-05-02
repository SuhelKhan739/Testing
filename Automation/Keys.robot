*** Settings ***
Library  SeleniumLibrary
Documentation  this is press kays file
Resource  ../Resources/Resources for Keys.robot
*** Variables ***
${url}   https://www.facebook.com/login/
${Driver}    chrome
*** Test Cases ***
Test1
    [Documentation]  This is Testing of Key operation for the ${url} url
    [Timeout]  50
    set selenium speed  2
    [Setup]  Kays   ${url}  ${Driver}
    press keys   css=#email     Suhel
    press keys   css=#email      Khan
    press keys  css=button._42ft[type='submit']     \\13
    #click button    css=button._42ft[type='submit']
    close browser
