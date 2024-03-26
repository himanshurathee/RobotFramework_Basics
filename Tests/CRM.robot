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
    #set window size      width=1935     height=1090

    page should contain  Customers Are Priority One!
    click link          Sign In
    page should contain   Login

    input text          id=email-id     admin@robotframeworktutorial.com
    input text          id=password     qwerty

    click button        id=submit-id

    page should contain  Our Happy Customers

    click link          id=new-customer
    page should contain  Add Customer

    input text          id=EmailAddress     hr@gmail.com
    input text          id=FirstName        Himanshu
    input text          id=LastName         Rathee
    input text          id=City             Dublin
    select from list by value       id=StateOrRegion        TX
    select radio button             gender      male
    select checkbox     name=promos-name

    click button        Submit

    wait until page contains        Success! New customer added.

    sleep       3s
    close browser