*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py


*** Keywords ***
Enter UserName in Login
    [Documentation]     This keyword is used for entering username while login
    [Arguments]         ${username}
    input text          ${txt_LoginUserName}   ${username}

Enter Password in Login
    [Documentation]     This keyword is used for entering password while login
    [Arguments]         ${password}
    input password      ${txt_LoginPassword}     ${password}

Click Login
    [Documentation]     This keyword is used for clicking the log in button
    click element       ${btn_Login}

Verify Successful Login
    [Documentation]         This keyword is used  for verifying successful login
    Wait Until Page Contains  Rank

Verify new user
    [Documentation]         This keyword is used  for verifying successful login
    Wait Until Page Contains  Username

New User As Admin Check
    [Documentation]         This keyword is used  for verifying Admin User
    click element           ${btn_delete}

User Can Edit Cat Name
    [Documentation]         This keyword is used  for verifying user can edit cat name
    [Arguments]         ${edited_cat_name_1}
    input text          ${cat_name_field}   ${edited_cat_name_1}

