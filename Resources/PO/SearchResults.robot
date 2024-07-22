*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${SEARCH_RESULT_LINK_4TH} =       xpath=//*[@id="root"]/div/div[2]/div[1]/div/div[1]/div[2]/div[4]/div/div/div[2]/div[2]/a
${SEARCH_RESULT_LINK_4TH} =         xpath=//div[@data-listno='3']//a
${SEARCH_RESULT_ELEMENT_PATTERN} =  xpath=//div[contains(@data-sku-simple,'_PH-')]

*** Keywords ***
Verify Search Result
    wait until page contains        ${ITEM}

Verify Product Count
    [Arguments]    ${Product_Count}
    #div[contains(@data-sku-simple,'_PH-')]
    ${count} =    get element count    ${SEARCH_RESULT_ELEMENT_PATTERN}
    should be equal as integers    ${count}    ${Product_Count}

Click Search Result
    click link                      ${SEARCH_RESULT_LINK_4TH}