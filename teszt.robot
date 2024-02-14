*** Settings ***
Library  Browser

*** Variables ***
${VALTOZO}
${orszag}    Hungary

*** Keywords ***
Nyisd meg a böngészőt
# https://marketsquare.github.io/robotframework-browser/Browser.html#Open%20Browser
    Open Browser   https://automationstore.com/login.php?action=create_account   chromium
Töltsd ki az email address mezőt
    Scroll To Element    //*[@id="FormField_1_input"] 
    Fill Text    //*[@id="FormField_1_input"]    teszt@teszt.com
    Sleep    2
Válaszd ki "Hungary" országot
    Scroll To Element    //*[@id="FormField_11_select"]
    Select Options By    //*[@id="FormField_11_select"]    label    ${orszag}
Várj 5 másodpercet
    Sleep    5

*** Test Cases ***
Űrlap kitöltés
    Nyisd meg a böngészőt
    Töltsd ki az email address mezőt
    Válaszd ki "Hungary" országot
    Várj 5 másodpercet

