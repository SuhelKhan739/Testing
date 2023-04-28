*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${Name}     Suhel Khan
${address}      Pune
${emp_id}   188123
*** Test Cases ***
Creat LIST
    ${speed}=   get selenium timeout
    log to console  ${speed}
    set selenium timeout    20
    ${speed}=   get selenium timeout
    log to console  ${speed}
    @{List_Suhel}   create list     ${Name}   ${address}    ${emp_id}
    #${Git_list}=  get list    @{List_Suhel}
    log to console    ${List_Suhel}
    ${length}   get length     ${List_Suhel}
    ${value}=   get from list   ${List_Suhel}     2
    log to console  ${value}

*** Keywords ***
