*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***
Launch Browser
    Open Browser      browser=chrome        executable_path=${EXECDIR}${/}drivers${/}chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/a/openemr/interface/login/login.php?site=default

End Browser
    Capture Page Screenshot
    Close Browser

