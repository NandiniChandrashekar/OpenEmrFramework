*** Settings ***
Documentation   This file contains reusable keywords

Library     SeleniumLibrary
Library     OperatingSystem

*** Variables ***
${BROWSER_NAME}         chrome
${URL}       https://demo.openemr.io/a/openemr/interface/login/login.php?site=default

*** Keywords ***
Launch Browser
   Set Local Variable    ${driver}        chromedriver.exe

    IF    '${BROWSER_NAME}' == 'firefox'
        Set Local Variable    ${driver}         geckodriver.exe
    ELSE IF  '${BROWSER_NAME}' == 'edge'
        Set Local Variable    ${driver}        msedgedriver.exe
    ELSE IF  '${BROWSER_NAME}' == 'safari'
        Set Local Variable    ${driver}        safaridriver.exe
    END

   Open Browser      browser=${BROWSER_NAME}        executable_path=${EXECDIR}${/}drivers${/}${driver}
    Set Selenium Implicit Wait    30s
    Maximize Browser Window
    Set Screenshot Directory    ${EXECDIR}${/}screenshot
    Go To    url=${URL}
End Browser
   # Capture Page Screenshot
   Close Browser




#Open Browser      browser=chrome        executable_path=${EXECDIR}${/}drivers${/}chromedriver

#${URL}      https://demo.openemr.io/a/openemr/interface/login/login.php?site=default



