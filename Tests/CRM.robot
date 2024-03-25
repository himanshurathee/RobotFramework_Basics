*** Settings ***
Library             SeleniumLibrary

*** Test Cases ***
Add Customers
    open browser        https://automationplayground.com/crm/       chrome
    sleep       3s
    close browser