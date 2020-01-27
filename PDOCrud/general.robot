*** Settings ***

Documentation     A test suite with case tests for the employee requirements.

Library    Collections


Resource     ./create/create-resources.robot
Resource     ./edit/edit-resources.robot
Resource     ./view/view-resources.robot
Resource     ./list/list-resources.robot
Resource     ./util/util-resources.robot

Test Setup  Open Test Browser
Test Teardown  Close Test Browser

*** Keywords ***


*** Test Cases ***


#First test case  

001-Should create a new register
    Accessing Employee's form to add one employee
    Filling Employee's form    Alicia    Parker    Blv 123    San Francisco    California    12345678
    Save Add's form   
    Confirming if the data was saved    

002-Should search and find a term
    Searching for a First Name    Alicia
    
003-Should visit add's page and return using back
    Accessing Employee's form to add one employee
    Return to the list page
    Searching for a First Name    Alicia


004-Should edit a register
    Accessing Employees's form to edit one employee 
    Editing Employee's form and saving    Edit    Edit    Edit    Edit    Edit    Edit

005-Should delete a register
    Deleting one employee


006-Should verify a mandatory field
    Accessing Employee's form to add one employee
    Filling Employee's form    ${EMPTY}    Parker    Blv 123    San Francisco    California    12345678
    Save Add's form   

007-Should view a register
    Accessing Employees's table to view one employee 
    Confirming if it is the View Page

008-Should create the same data
    Accessing Employee's form to add one employee
    Filling Employee's form    Alicia    Parker    Blv 123    San Francisco    California    12345678
    Save Add's form   
    Confirming if the data was saved
    Return to the list page
    Deleting one employee
    
009-Should cancel a clean all the fields in Add's page
    Accessing Employee's form to add one employee
    Filling Employee's form    AAA    PPP    Blv 123    SanFrsc    Calix    xxxxxxxx
    Canceling and cleaning fields

010-Ordering First Name column starting by the names with the letter Z
    Accessing Employee's form to add one employee
    Filling Employee's form    ZZZZ    Parker    Blv 123    San Francisco    California    12345678
    Save Add's form   
    Confirming if the data was saved
    Return to the list page
    Sleep   1
    Order First Name starting by Z    ZZZZ
    Deleting one employee
























