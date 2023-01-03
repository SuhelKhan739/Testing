*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  https://www.jio.com/selfcare/plans/mobility/prepaid-plans-list/?category=Popular%20Plans&categoryId=UG9wdWxhciBQbGFucw==
${prpaid}   xpath:(//a[@class='j-link j-text-body-s-bold is-text header_item-links_link'])[2]
${topup}    xpath:(//button[@class='j-button j-button-size__medium secondary'])[11]
${recharge}     xpath:(//button[@class='j-button j-button-size__medium primary'])[3]
${number_field}   xpath://input[@type='tel']
${number}   8618581435
${submit_button}    xpath:(//button[@class='j-button j-button-size__medium primary'])[13]
${net_banking}  xpath:(//div[@class='css-1ugn0qh'])[2]
${ICICI_bank}   xpath:(//div[@class='css-tviry7'])[2]
${pay}  xpath://button[@class='css-1paorcp']
*** Test Cases ***
JIO
    Recharge
*** Keywords ***
Recharge
    open browser    ${browser}  chrome
    Maximize Browser window
    click element   ${prpaid}
    sleep   5sec
    click element   ${topup}
    sleep   3sec
    click element   ${recharge}
    sleep   2sec
    input text  ${number_field}  ${number}
    click element   ${submit_button}
    sleep   10sec
    click element   ${net_banking}
    sleep   5sec
    click element   ${ICICI_bank}
    sleep   5sec
    click element   ${pay}
    sleep   15sec
    close browser


