*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.facebook.com/
${button}   xpath://button[@name='login']
${email}    id:email
${pass}     id:pass
*** Test Cases ***
LoginTest
    facebook

*** Keywords ***
facebook
    open browser    ${url}    ${browser}
    maximize browser window
    input text  ${email}       suhelk739@gmail.com
    input text  ${pass}      Suhelk739
    click Element   ${button}
