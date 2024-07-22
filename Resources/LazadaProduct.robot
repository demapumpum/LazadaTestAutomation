*** Settings ***
Library    SeleniumLibrary
Resource    PO/LandingPage.robot
Resource    PO/TopNav.robot
Resource    PO/SearchResults.robot
Resource    PO/ProductView.robot

*** Keywords ***
Search For Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Result

Verify Search Results Products Count
    [Arguments]    ${Product_Count}
    SearchResults.Verify Product Count    ${Product_Count}

Select Product from Search Results
    SearchResults.Click Search Result
    ProductView.Verify Product Page Loaded

Add Product to Cart
    ProductView.Click Add to Cart
    ProductView.Verify Login Popup

