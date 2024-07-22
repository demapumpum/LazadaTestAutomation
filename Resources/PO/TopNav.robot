*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR} =      id=q
#${TOPNAV_SEARCH_BUTTON} =   xpath=//*[@id="topActionHeader"]/div/div[2]/div/div[2]/div/form/div/div[2]/a
${TOPNAV_SEARCH_BUTTON} =   xpath=//a[@class='search-box__button--1oH7']

*** Keywords ***
Search for Products
    input text      ${TOPNAV_SEARCH_BAR}  ${ITEM}
    click element   ${TOPNAV_SEARCH_BUTTON}