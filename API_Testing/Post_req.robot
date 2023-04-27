*** Settings ***
Library     RequestsLibrary
Library     Collections
*** Variables ***
${Base_url}     https://reqres.in/
${end_url}      /api/users

*** Test Cases ***
Post_req121
    create session      mysession1      ${Base_url}
    ${Body}=    create dictionary       name=Rakesh      job=Tester
    ${Header}   create dictionary   Content-Type=application/json
    ${response}=    post request    mysession1      /api/users      data=${Body}    headers=${Header}
    log to console    ${response.status_code}
    log to console   ${response.content}

    #Validation
    ${status_code}=     convert to string     ${response.status_code}
    should be equal      ${status_code}     201
    ${content}=     convert to string     ${response.content}
   # should contain      @{content}      Rakesh