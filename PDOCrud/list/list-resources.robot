*** Settings ***

Documentation     A resource file with reusable keywords and variables.

Library  OperatingSystem
Library  Collections
Library  Selenium2Library

Resource    ../util/util-resources.robot

*** Variables ***

#Fields
${search_field}                             id=pdocrud_search_box


#Buttons
${add_button}                               xpath=./html/body/div[1]/div/section[2]/section/div/div[2]/div/a
${delete_button}                            xpath=./html/body/div[1]/div/section[2]/section/div/div[3]/div[2]/div/div/table/tbody/tr[1]/td[10]/a[3]/i
${edit_button}                              xpath=./html/body/div[1]/div/section[2]/section/div/div[3]/div[2]/div/div/table/tbody/tr[1]/td[10]/a[2]/i
${view_button}                              xpath=./html/body/div[1]/div/section[2]/section/div/div[3]/div[2]/div/div/table/tbody/tr[1]/td[10]/a[1]
${go_button}                                id=pdocrud_search_btn

#Table
${First_Name_Cel_table}                     xpath=./html/body/div[1]/div/section[2]/section/div/div[3]/div[2]/div/div/table/tbody/tr[1]/td[4]
${Head_First_Name_table}                    (//span[contains(text(), "First name")])[1]



#Checkbox

#Messages
                                        
#warnnings

*** Keywords ***

Accessing Employee's form to add one employee
    Wait Until Page Contains Element    ${add_button}    timeout=90
    Click Element    ${add_button}    


Accessing Employees's form to edit one employee 
    Wait Until Page Contains Element    ${edit_button}    timeout=90
    Click Element    ${edit_button}    


Accessing Employees's table to view one employee 
    Wait Until Page Contains Element    ${view_button}    timeout=90
    Click Element   ${view_button}
         

Deleting one employee
    Wait Until Page Contains Element    ${delete_button}    timeout=90
    Click Element   ${delete_button}
    #POPUP FROM THE BROWSER ACCEPTED BELOW.
    Handle Alert        
   
Searching for a First Name
    [Arguments]    ${Term}
    Wait Until Page Contains Element    ${search_field}    timeout=90
    Input Text    ${search_field}    ${Term}
    Wait Until Page Contains Element    ${go_button}    timeout=90
    Click Element    ${go_button}
    Wait Until Page Contains Element    ${First_Name_Cel_table}    timeout=90
    Page Should Contain Element    ${First_Name_Cel_table}     ${Term}  


Order First Name starting by Z
    [Arguments]    ${Term}
    Wait Until Page Contains Element    ${Head_First_Name_table}    timeout=5
    Click Element    ${Head_First_Name_table}
    sleep  1    
    Click Element    ${Head_First_Name_table}
    sleep  1    
    Wait Until Page Contains Element    ${First_Name_Cel_table}    timeout=5
    Page Should Contain Element    ${First_Name_Cel_table}     ${Term}  



