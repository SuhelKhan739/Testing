*** Settings ***
Library  XML
Library  os
Library  Collections
*** Variables ***

*** Test Cases ***
get the count
    ${XML}=     parse XML   D:/JSON Path/XML_validation.txt
    ${count}=   get element count   ${XML}  .//food
    should be equal as integers       ${count}       5
    log to console   ${count}
Child elements
    ${XML}=     parse XML   D:/JSON Path/XML_validation.txt
    ${Child_ele}=   get child elements     ${XML}       .//food[1]
    ${name}=    get element text    ${Child_ele[0]}
    ${price}=   get element text    ${Child_ele[1]}
    ${description}=     get element text    ${Child_ele[2]}
    log to console      ${name}
    log to console      ${price}
    log to console      ${description}
*** Keywords ***
