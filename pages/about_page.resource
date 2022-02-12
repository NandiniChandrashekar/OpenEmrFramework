*** Settings ***
Documentation  this file handles all the menu for openemr application

Resource  ../base/common_functionality.resource


*** Keywords ***
Main Page Title Should be
  [Arguments]   ${expected_tite}
  Title Should Be    ${expected_tite}