*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${LOGIN URL}        https://kabiixoo-z3v6.onrender.com/signin

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    admin
    Input Password    admin123
    Submit Credentials
    # Welcome Page Should Be Open

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    KabiiXoo

Input Username
    [Arguments]    ${username}
    Input Text                      class=inputTextPass      ${username}

Input Password
    [Arguments]    ${password}
    Input Text                      class=inputTextPass    ${password}

Submit Credentials
    Click Button    เข้าสู่ระบบ

Welcome Page Should Be Open
    Title Should Be    Home