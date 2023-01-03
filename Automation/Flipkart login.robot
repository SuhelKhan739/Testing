*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${open browser}     https://www.flipkart.com/  chrome
${click}    xpath://button[@class='_2KpZ6l _2doB4z']
*** Test Cases ***
LoginFlipkart
    open browser  ${open browser}
    click Element   ${click}
    click Element   xpath://a[@class='_1_3w1N']
    input text  xpath://input[@class='_2IX_2- VJZDxU']  8618581435     #enter your id
    input text  xpath://input[@class='_2IX_2- _3mctLh VJZDxU']  Flipkart@739     #enter your password
    click element   xpath://button[@class='_2KpZ6l _2HKlqd _3AWRsL']
    sleep   5sec
    mouse over      //*[contains(text(),'My Account')]
    mouse over  xpath://*[contains(text(),'My Profile')]
    click element   xpath://*[contains(text(),'My Profile')]
    input text   xpath://input[@title='Search for products, brands and more']   puma x 1der vegas mens shoes
    #sleep   3sec
    #click element   xpath://button[@class='L0Z3Pu']
    #sleep   3sec
    #click element   xpath:(//img[@class='_2r_T1I'])[1]
    #sleep   8sec
    #click elemect   xpath:(//div[@class='_2C41yO _1pH70n _31hAvz'])[2]
    #sleep   5sec
    #click elemect   xpath:(//a[@class='_1fGeJ5 _2UVyXR _31hAvz'])[5]
    #sleep   5sec
    #click element   xpath://button[@class='_2KpZ6l _2U9uOA ihZ75k _3AWRsL']




