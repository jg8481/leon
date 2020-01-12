*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Resource          ${EXECDIR}//Workshop-Examples//Tests//Workshop-Part-Two//Resources//Selenium-Desktop-Resources.robot

Suite Teardown    Close Browser

*** Variables ***

${BROWSER}        Chrome
${RETRY_AMOUNT}    10
${SELENIUM_IMPLICIT_WAIT}    10

*** Test Cases ***

Open Chrome Browser, go to a Google, and check the page.
    [Tags]    Desktop Chrome
    Open Chrome Browser To Specified URL

*** Keywords ***

Open Chrome Browser To Specified URL
    Open Browser    https://www.google.com/    ${BROWSER}
    Set Selenium Implicit Wait    ${SELENIUM_IMPLICIT_WAIT}
    Wait Until Keyword Succeeds   ${RETRY_AMOUNT}x    0.1s    Wait Until Page Contains    Gmail    0.5s
    Set Selenium Implicit Wait    ${SELENIUM_IMPLICIT_WAIT}
    Sleep    2s
    Capture Page Screenshot
