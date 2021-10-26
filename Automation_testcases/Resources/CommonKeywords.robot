*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Documentation]     This Keyword is used for opening browser and maximizing browser window
    open browser  http://localhost:3000/login  chrome
    maximize browser window