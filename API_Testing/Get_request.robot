*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary
*** Variables ***
${Base_url}     https://reqres.in/api/users?page=2
${end_url}      /api/users?page=2

*** Test Cases ***
Get_Data
    create session      mysession    ${Base_url}
    ${Response}=    Get     ${Base_url}
    log to console      ${Response.status_code}
    log to console      ${Response.content}
    #log to console      ${Response.header}

    #Validation
    ${actual_statuscode}=   convert to string       ${Response.status_code}
    Should Be Equal  ${actual_statuscode}    200
    ${body}=    convert to string    ${Response.content}
    Should Contain      ${body}     Funke