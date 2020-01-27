*** Settings ***

Documentation     A resource file with reusable keywords and variables.

Library  OperatingSystem
Library  Collections
Library  Selenium2Library

*** Variables ***

${URL}    https://pdocrud.com/demo/pages/

${BROWSER_FF}  ff
${BROWSER_GC}  chrome

    
*** Keywords ***

Open Test Browser
    Open Browser    ${URL}    ${BROWSER_GC}
    Maximize Browser Window

Close Test Browser
    Close all browsers
    
Maximizar Tela
    Maximize Browser Window
    
Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})
    Sleep 	2





























































