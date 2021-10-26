*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/CommonKeywords.robot
Resource    ../Resources/LoginKyewords.robot
Resource    ../Resources/LogoutKeywords.robot
Resource    ../Resources/MainviewKeywords.robot

*** Variables ***
${SiteUrl}    http://localhost:3000/login
${Browser}    chrome
${username}   user
${password}   helloworld
${username_admin}   admin
${password_admin}   adminpass
${edited_cat_name_1}   wali



*** Test Cases ***

Login Test
    [Tags]              Robot Test
    [Documentation]     This testcase is for checking the log in functionality
    [Setup]             Open my browser
    [Teardown]          close all browsers
    Enter username in login     ${username}
    Enter password in login     ${password}
    Click Login
    Verify successful login


New User Can See Login Page
    [Tags]              Robot Test
    [Documentation]     This testcase is for new users who will only see login page
    [Setup]             Open my browser
    [Teardown]          close all browsers
    Verify new user

New User As Admin Check
    [Tags]              Robot Test
    [Documentation]     This testcase is for checking the log in functionality
    [Setup]             Open my browser
    [Teardown]          close all browsers
    Enter username in login     ${username_admin}
    Enter password in login     ${password_admin}
    Click Login
    Verify successful login

User Can Edit Cat Name
    [Tags]              Robot Test
    [Documentation]     This testcase is for checking the log in functionality
    [Setup]             Open my browser
    [Teardown]          close all browsers
    Enter username in login     ${username_admin}
    Enter password in login     ${password_admin}
    Click Login
    Verify successful login
