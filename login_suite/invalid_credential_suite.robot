*** Settings ***


Resource      ../base/common_functionality.resource
Resource      ../pages/login_page.resource

Test Setup       Launch Browser
Test Teardown    End Browser



Test Template       Verify Invalid Credentials Template

*** Test Cases ***
TC1     john   john123    Dutch    Invalid username or password
TC2     peter   peter123   Danish    Invalid username or password
TC3     Mark    Mark123     Greek   Invalid username or password

*** Keywords ***
Verify Invalid Credentials Template
    [Arguments]     ${username}     ${password}     ${language}     ${expected_error}
    Enter Username   ${username}
    Enter Password   ${password}
    Select Language Using Label    ${language}
    Select From List By Label    name=languageChoice     ${language}
    Click Login
    Validate Invalid Error Message    ${expected_error}
  #  Click Element      xpath=//button[@type='submit']
  #  Element Should Contain   xpath= //div[contains(text(),'Invalid')]     ${expected_title}



