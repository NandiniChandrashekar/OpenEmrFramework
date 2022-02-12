*** Settings ***



Resource     ../pages/login_page.resource
Resource     ../pages/main_page.resource


#Library   DataDriver    file=../test_data/OpenEMRData.xlsx    sheet_name=verifyvalidcredentials
Library    DataDriver     file=../test_data/verify_valid_credentials.csv

Test Setup       Launch Browser
Test Teardown    End Browser

Test Template    Verifty Valid Credentials Template


*** Test Cases ***
TC1

*** Keywords ***
Verifty Valid Credentials Template
   [Arguments]  ${username}   ${password}   ${language}   ${expected_title}
    Enter Username   ${username}
    Enter Password   ${password}
    Select Language Using Label    ${language}
     Click Login
#   Click Element      xpath=//button[@type='submit']
    Title Should Be     ${expected_title}






