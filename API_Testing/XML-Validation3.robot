*** Settings ***
Library  XML
Library  RequestsLibrary
Library  os
Library  Collections

*** Variables ***
${Base_url}     https://www.w3schools.com/
${end_url}      /xml/note.xml

*** Test Cases ***
validation1
    create session      my session      ${Base_url}
    ${response}=    GET On Session    my session   ${end_url}
    ${res_string}=  convert to string      ${response.content}
    ${XML_obj}=     parse XML       ${res_string}

    #Validation
    element text should be      ${XML_obj}      Tove    .//to
    ${child_elements}=  get child elements     ${XML_obj}
    should not be empty      ${child_elements}
    ${to}=  get element text    ${child_elements[0]}
    ${from}=  get element text    ${child_elements[1]}
    ${heading}=  get element text    ${child_elements[2]}

*** Keywords ***

