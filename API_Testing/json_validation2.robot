*** Settings ***
Library      RequestsLibrary
Library      os
Library      JSONLibrary
Library      Collections

*** Variables ***
${Base_url}     https://reqres.in/
${end_url}      /api/users?page=2

*** Test Cases ***
API2
    Validation1

*** Keywords ***
Validation1
    Create session      mysession        ${Base_url}
    ${response}=    get request    mysession     ${end_url}

    log to console       ${response.status_code}
   # ${body}=    ${response.content}
    log to console     ${response.content}

    #Validation
    ${Status_code}=     convert json to string    ${response.status_code}
    should be equal      ${Status_code}     200
    #Take teh Json file
    ${Json_Data}=   convert string to json       ${response.content}
    ${Lat_Name}=    get value from json     ${Json_Data}       $.data[2].last_name
    log to console      ${Lat_Name[0]}
    should be equal     ${Lat_Name[0]}      Funke