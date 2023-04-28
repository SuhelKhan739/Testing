*** Settings ***
Library  Collections
Library  SeleniumLibrary
*** Variables ***
${Name}     Suhel Khan
${address}      Pune
${emp_id}   188123

*** Test Cases ***
Creat LIST
    [tags]  List
    @{List_Suhel}   create list     ${Name}   ${address}    ${emp_id}
    :  FOR     ${i}    IN  ${List_Suhel}
    \   log to console    ${i}

store keyword
    [tags]  key
    ${key}=  set variable    log to console
    run keyword     ${key}      I am suhel
    ${speed}=   set variable    set selenium speed
    run keyword    ${speed}     2
    ${actual_speed}=    get selenium speed
    log to console      ${actual_speed}

If_else
    ${value}=
*** Keywords ***
