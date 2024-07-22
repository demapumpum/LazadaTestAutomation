*** Settings ***
Documentation    These are sample tests for https://www.lazada.com.ph
Resource    ../Resources/LazadaProduct.robot
Resource    ../Resources/Common.robot
#Test Setup    Begin Web Test
#Test Teardown    End Web Test
Suite Setup    Begin Web Test
Suite Teardown    End Web Test

*** Variables ***
${BROWSER} =    chrome
${URL} =    https://www.lazada.com.ph
${ITEM} =    New Balance 574
${ITEM_CATEGORY} =    Sports Shoes and Clothing

*** Test Cases ***
Logged out user should be able to search for products
    [Documentation]    TC#1
    [Tags]    Smoke Search
    LazadaProduct.Search For Products

Search results page should contain 40 products
    [Documentation]    TC#2
    [Tags]    Smoke Search results
    LazadaProduct.Verify Search Results Products Count    40

Logged out user should be able to view a product
    [Documentation]    TC#3
    [Tags]    Smoke Product
#    LazadaProduct.Search For Products
    LazadaProduct.Select Product from Search Results

Logged out user should sign in to add product to cart
    [Documentation]    TC#4
    [Tags]    Smoke Add to cart
#    LazadaProduct.Search For Products
#    LazadaProduct.Select Product from Search Results
    LazadaProduct.Add Product to Cart


