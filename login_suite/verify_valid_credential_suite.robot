*** Settings ***

Library    SeleniumLibrary

*** Test Cases ***
TC1
   Open Browser   url=https://demo.openemr.io/a/openemr/interface/login/login.php?site=default    browser=chrome    executable_path=${EXECDIR}${/}drivers\\chromedriver.exe
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Input Text      id=authUser    admin
   Input Password  id=clearPass     pass
   Select From List By Label    name=languageChoice  English (Indian)
   Click Element      xpath=//button[@type='submit']
   Title Should Be    OpenEMR
   Close Browser