*** Settings ***
Documentation  This is some basic info about the whole SUITE
Library             SeleniumLibrary

#run the script from terminal
#robot -d Results Tests/CRM.robot


*** Test Cases ***
#Test case name is necessary
Add Customers
    [Documentation]     This is some basic info about the TEST

    #Initialize Selenium (Not necessary)
    set selenium speed  .2s
    set selenium timeout  10s

    log                 Starting the test case
    open browser        https://automationplayground.com/crm/       chrome

    #Resize browser window for recording
    #set window position  x=341  y=169
    set window size      width=1935     height=1090

    sleep       3s
    close browser