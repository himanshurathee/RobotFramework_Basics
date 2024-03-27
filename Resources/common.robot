*** Settings ***
Library             SeleniumLibrary

*** Keywords ***
Set Browser
    set selenium speed  .2s
    set selenium timeout  10s

Begin Web Test
    open browser                https://automationplayground.com/crm/       chrome

End Web Test
    close browser