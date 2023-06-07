*** Settings ***
Documentation     User logs in with valid username and password
Resource          CommonKeywords.txt
Library           userdata.py
Library           OperatingSystem
Library           String

*** Test Cases ***
LoginScreen_ObjectOnPage
    [Documentation]    Verify that page contains objects
    [Setup]    Go To Home Page
    Change To Iframe
    Object On Page
    [Teardown]    Close Browser

UserEntersInvalidEmailFormat
    [Documentation]    User enters invalid email format
    [Setup]    Go To Home Page
    ChangeTo Iframe
    Invalid Email Format
    [Teardown]    Close Browser

UserEntersInvalidPassword
    [Documentation]    User enters invalid password.
    ...    Invalid password created on python script.
    [Setup]    Go To Home Page
    ChangeTo Iframe
    Invalid Password
    [Teardown]    Close Browser

UserLogsInWithValidEmailAndPassword
    [Documentation]    User logs in with valid username and password
    [Setup]    Go To Home Page
    Change To Iframe
    Login
    Change To Iframe
    Verify After Login
    [Teardown]    Close Browser
