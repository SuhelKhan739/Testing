*** Settings ***
Documentation  Tags in Robot Framework
Library  SeleniumLibrary
Default Tags  Def
Force Tags  for
*** Variables ***

*** Test Cases ***
Test Case 1
    Log To Console  This is test case 1
Test Case 2
    [tags]  Regression      smoke
    Log To Console  This is test case 2(both Resgression and smoke)
Test Case 3
    [tags]  Regression
    Log To Console  This is test case 3
Test Case 4
    [tags]  Smoke
    Log To Console  This is test case 4

Test Case 5
    [tags]  Sanity
    Log To Console  This is test case 5
*** Keywords ***