*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Load
    go to               ${URL}

Verify Page Loaded
    wait for condition  return document.readyState == "complete"