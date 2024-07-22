*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${LOGIN_BUTTON_LOCATOR} =       xpath=/html/body/div[8]/div/div/div/div/div/div/div/div[2]/div/div[3]/button
${LOGIN_BUTTON_LOCATOR} =       xpath=//button[@class='iweb-button iweb-button-primary index_module_loginButton__deb6dcb9 index_module_loginButton__deb6dcb9']
#${ADD_TO_CART_LOCATOR} =        xpath=//*[@id="module_add_to_cart"]/div/button[2]/span/span
${ADD_TO_CART_LOCATOR} =        xpath=//div[@id="module_add_to_cart"]//button[2]

*** Keywords ***
Verify Product Page Loaded
    wait until page contains        ${ITEM_CATEGORY}

Click Add to Cart
    click element                   ${ADD_TO_CART_LOCATOR}

Verify Login Popup
    page should contain element     ${LOGIN_BUTTON_LOCATOR}
    element text should be          ${LOGIN_BUTTON_LOCATOR}   LOGIN