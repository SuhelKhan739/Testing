*** Settings ***
Library  JSONLibrary
Library  RequestsLibrary
Library  os
Library  Collections

*** Variables ***


*** Test Cases ***
API Testing
    Validate_Json
    validation_Json2



*** Keywords ***
Validate_Json
    ${Json_data}=   load json from file     D:/JSON Path/jsondata.txt
    ${Name}=    get value from json     ${Json_data}    $.firstName
    log to console  ${Name[0]}
    #Validation
    should be equal     ${Name[0]}     John
validation_Json2
    ${Json_data}=   load json from file     D:/JSON Path/jsondata.txt
    ${Home_number}=     get value from json     ${Json_data}       $.phoneNumbers[1].number
    log to console     ${Home_number[0]}
    ${actual_Hno}=       convert to string       0123-4567-8910
    should be equal       ${Home_number[0]}         ${actual_Hno}

