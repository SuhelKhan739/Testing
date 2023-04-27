*** Settings ***
Library  XML
Library  os
Library  Collections
Library  Documentation  Suite
*** Variables ***

*** Test Cases ***
Test
    XML_Validate
    XML_Validate2
    XML_Validate3
*** Keywords ***
XML_Validate
    ${XML_data}=    parse XML   D:/JSON Path/XML_validation.txt
    ${food_name}=   get element text    ${XML_data}     .//food[1]/name
    log to console      ${food_name}
    should be equal     ${food_name}    Belgian Waffles
XML_Validate2
    ${XML_data}=    parse XML   D:/JSON Path/XML_validation.txt
    ${food_name}=   get element    ${XML_data}     .//food[1]/name
    log to console      ${food_name}
    should be equal     ${food_name.text}    Belgian Waffles
XML_Validate3
    ${XML_data}=    parse XML   D:/JSON Path/XML_validation.txt
    ${food_name}=   element text should be    ${XML_data}      Belgian Waffles        .//food[1]/name
    log to console       ${food_name}
