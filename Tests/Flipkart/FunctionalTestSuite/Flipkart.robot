*** Settings ***
Library  SeleniumLibrary

Suite Setup  Log  Inside Test Suite SetUp   # Also Use SetUp and TearDown !!!
Suite Teardown  Log  Inside Test Suite TearDown

Test Setup  Log  Inside Test Case SetUp
Test Teardown  Log  Inside Test Case TearDown

*** Variables ***
${google_search}    https://www.google.co.in/
${flip_search}  flipkart
${product_search}   iphone 12 pro
${purchase_search}  arijitsameers@gmail.com
${password}     S@mmu98765

*** Test Cases ***
Google Search Test
    [Documentation]  This Test is to Open Google
    [Tags]  Google
    Open Browser    ${google_search}    chrome
    Maximize Browser Window
    Search Data
    Submit Form
    Click Element   class:LC20lb

Flipkart Test
    [Documentation]  This is to test the Flipkart Search
    [Tags]  Shopping App
    sleep  3s
    Click Button    class:_2KpZ6l
    Flip Data Search
    sleep  3s
    Click Button    class:L0Z3Pu

Purchased Item Test
    [Documentation]  This is to test the Product to Purchase
    [Tags]  Purchase
    sleep   2s
    Execute JavaScript    window.scrollTo(0,600)
    sleep  3s
    Click Element   xpath:/html/body/div[1]/div/div[3]/div[1]/div[2]/div[4]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  3s
    Switch Window   title:APPLE iPhone 12 Pro ( 256 GB GB Storage, 0 GB RAM ) Online at Best Price On Flipkart.com
    sleep   1s
    Click Button    class:ihZ75k
    sleep  3s
    Email Address
    sleep  2s
    Click Button    class:_20xBvF
    Password
    sleep  2s
    Click Button    class:_3AWRsL

*** Keywords ***
Search Data
    Input Text  name:q  ${flip_search}
Flip Data Search
    Input Text  name:q  ${product_search}
Email Address
    Input Text  class:_17N0em     ${purchase_search}
Password
    Input Password  class:_3umUoc   ${password}