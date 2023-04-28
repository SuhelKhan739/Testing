*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.globalsqa.com/demo-site/draganddrop/#Accepted%20Elements
${chrome}   chrome
*** Test Cases ***
Mouseactions
    [tags]  Tag1
    set selenium speed  2
    open browser    ${url}  ${chrome}
    maximize browser window
    context     css=#menu-item-1513
    context     css=#menu-item-1561
    mouse_down_up
    close browser
mouse121
    [tags]  Tag2
    set selenium speed  2
    open browser    ${url}  ${chrome}
    maximize browser window
    mouseover1
    close browser
*** Keywords ***
context
    [arguments]  ${path}
    open context menu   ${path}
    open context menu   ${path}
mouse_down_up
    set selenium speed  2
    mouse down      xpath://*[@id="menu-item-2806"]/a/span[2]
    mouse up    xpath://*[@id="menu-item-1513"]
mouseover1
    mouse over  xpath://*[@id="menu-item-2804"]/a/span[2]