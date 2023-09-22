*** Settings ***
Documentation     User logs in with valid username and password
Resource          CommonKeywords.txt
Library           userdata.py
Library           OperatingSystem
Library           String

*** Test Cases ***
TC1_LoginScreen_ObjectOnPage
    [Documentation]    Verify that page contains objects
    [Setup]    Go To Home Page
    Change To Iframe
    Object On Page
    [Teardown]    Close Browser

TC2_UserEntersInvalidEmailFormat
    [Documentation]    User enters invalid email format
    [Setup]    Go To Home Page
    ChangeTo Iframe
    Invalid Email Format
    [Teardown]    Close Browser

TC3_UserEntersInvalidPassword
    [Documentation]    User enters invalid password.
    ...    Invalid password created on python script.
    [Setup]    Go To Home Page
    ChangeTo Iframe
    Invalid Password
    [Teardown]    Close Browser

TC4_UserLogsInWithValidEmailAndPassword
    [Documentation]    User logs in with valid username and password
    [Setup]    Go To Home Page
    Change To Iframe
    Login
    Change To Iframe
    Verify After Login
    [Teardown]    Close Browser

TC5_ManageBooking_from_City
    [Documentation]    Book a flight found trip between from and to destionations.
    ...    Verify "From City" list items
    [Setup]    Go To Home Page
    Change To Iframe
    Login
    Change To Iframe
    Verify After Login
    Validation Manage Booking
    ValidateFromCity
    [Teardown]    Close Browser

TC6_ManageBooking_To_City
    [Documentation]    Book a flight found trip between from and to destionations.
    ...    Verify "To City" list items
    [Setup]    Go To Home Page
    Change To Iframe
    Login
    Change To Iframe
    Verify After Login
    Validation Manage Booking
    Validate To City
    [Teardown]    Close Browser

TC7_ManageBooking_Verify_Class
    [Documentation]    Validate "Class" list items
    [Setup]    Go To Homepage
    Change To Iframe
    Login
    Change To Iframe
    Verify After Login
    Validation Manage Booking
    ValidateClass
    [Teardown]    Close Browser

TC8_ManageBooking_Verify_Radio_Button_Not_Selected_By_Default
    [Documentation]    Verification that radio buttons aren't selected by default
    [Setup]    Go To Home Page
    Change To Iframe
    Login
    Change To Iframe
    Verify After Login
    Validation Manage Booking
    Radio Button Validation
    [Teardown]    Close Browser

TC9_ManageBooking_Book_Flight_One_way_Trip_between_To_and_From_Destinations_From_Toronto_to_Paris_Economy
    [Documentation]    Book flight from Toronto to Paris in economy class
    [Setup]    Go To Home Page
    Change To Iframe
    Login
    Change To Iframe
    Verify After Login
    Validation Manage Booking
    Book Economy Flight
    [Teardown]    Close Browser

TC10_Managebooking_TC6_NewYork_To_Mumbai
    [Documentation]    Book flight from New York to Mumbai in first class
    [Setup]    Go To Home Page
    Change To Iframe
    Login
    Change To Iframe
    Verify After Login
    Validation Manage Booking
    Book First Fare Flight
    [Teardown]    Close Browser

TC11_ManageBooking_BusinessClass_Flight
    [Documentation]    Book flight from Chicago to Toronto in business class
    [Setup]    Go To Home Page
    Change To Iframe
    Login
    Change To Iframe
    Verify After Login
    Validation Manage Booking
    Book Business Flight
    [Teardown]    Close Browser

TC12_ManageBooking_Select_Either_Flight/Hotel
    [Documentation]    Negative testcase. Verify that Flight or Flight + Hotel radio button isn't selected
    [Setup]    Go To Home Page
    Change To Iframe
    Login
    Change To Iframe
    Verify After Login
    Validation Manage Booking
    Click Element    xpath://button[normalize-space()='Get Fare']
    Wait Until Keyword Succeeds    2    1    Page Should Contain    Please choose one of Flight or Flight + Hotel!    INFO
    [Teardown]    Close Browser

TC13_Search_Flight
    [Setup]    Go To Home Page
    Change To Iframe
    Login
    Change To Iframe
    Verify After Login
    Validate_Search_Flight
    [Teardown]    Close Browser
