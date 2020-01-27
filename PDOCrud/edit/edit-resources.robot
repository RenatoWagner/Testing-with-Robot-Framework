*** Settings ***

Documentation     A resource file with reusable keywords and variables.

Library  OperatingSystem
Library  Collections
Library  Selenium2Library

Resource    ../util/util-resources.robot

*** Variables ***

#Fields
${first_name_field}                         id=ZW1wbG95ZWUjJGZpcnN0X25hbWVAM2RzZnNkZioqOTkzNDMyNA==
${last_name_field}                          id=ZW1wbG95ZWUjJGxhc3RfbmFtZUAzZHNmc2RmKio5OTM0MzI0
${adress_field}                             id=ZW1wbG95ZWUjJEFkZHJlc3NAM2RzZnNkZioqOTkzNDMyNA==
${city_field}                               id=ZW1wbG95ZWUjJENpdHlAM2RzZnNkZioqOTkzNDMyNA==
${state_field}                              id=ZW1wbG95ZWUjJFN0YXRlQDNkc2ZzZGYqKjk5MzQzMjQ=
${zip_field}                                id=ZW1wbG95ZWUjJFppcEAzZHNmc2RmKio5OTM0MzI0

#Buttons
${save_button}                                     class=pdocrud-submit

#Checkbox

#Messages
${done_message}                            xpath=./html/body/div[1]/div/section[2]/section/form/div[2]/span[3]
                                        
#warnnings

*** Keywords ***

Editing Employee's form and saving
    [Arguments]    ${Fist_Name}    ${Last_Name}    ${Adress}    ${City}    ${State}    ${Zip}
    
    Wait Until Page Contains Element    ${first_name_field}    timeout=90
    Input Text    ${first_name_field}    ${Fist_Name} 
    Wait Until Page Contains Element    ${last_name_field}    timeout=90
    Input Text    ${last_name_field}    ${Last_Name}
    Wait Until Page Contains Element    ${adress_field}    timeout=90
    Input Text    ${adress_field}    ${Adress}
    Wait Until Page Contains Element    ${city_field}    timeout=90
    Input Text    ${city_field}    ${City}
    Wait Until Page Contains Element    ${state_field}    timeout=90
    Input Text    ${state_field}    ${state}
    Wait Until Page Contains Element    ${Zip_field}    timeout=90
    Input Text    ${Zip_field}    ${Zip}
   
    Wait Until Page Contains Element    ${save_button}    timeout=90
    Click Button    ${save_button}
    
    Wait Until Page Contains Element    ${done_message}    timeout=90
    Page Should Contain Element    ${done_message}    Operation done successfully 
    






