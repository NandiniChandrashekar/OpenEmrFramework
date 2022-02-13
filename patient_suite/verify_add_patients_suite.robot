*** Comments ***
Navigate onto https://demo.openemr.io/b/openemr/interface/login/login.php?site=default
Update username as admin
Update password as pass
Click on the login button
Click on Patient/Client and Click on Patients
Click Add New Patient
Add the first name, last name
Update DOB as today's date
Update the Sex
 Click on the create new patient button above the form
 Click on confirm create new patient button.
 Print the text from alert box (if any error before handling alert add 5 sec wait)
 Handle alert
 Close the Happy Birthday popup
 Get the added patient name and print in the console.

*** Settings ***
Documentation   this file contains adding new patients and verifing it

Library  SeleniumLibrary

*** Test Cases ***
TC1
   Open Browser   url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    browser=chrome    executable_path=${EXECDIR}${/}drivers\\chromedriver.exe
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Input Text      id=authUser    admin
   Input Password  id=clearPass     pass
   Click Element  xpath=//button[@type='submit']
   Click Element    xpath=//*[@id="mainMenu"]/div/div[5]/div/div
   Click Element    xpath=//*[@id="mainMenu"]/div/div[5]/div/ul/li[1]/div
   Click Element    id=create_patient_btn1
    Select Frame    xpath=//iframe[@name='pat']
    Input Text    css=#form_fname      nandini
    Input Text    id=form_DOB    2022-02-12
   Select From List By Label    id=form_sex   fs
     Click Element    id=create
     Mouse Down    xpath=//input[@type='button']
    ${alert_text}  Handle Alert  action=Accept  timeout=30s
    Log To Console  ${alert_text}

