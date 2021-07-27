*** Settings ***
Library  BuiltIn
Library  Collections
Library  SeleniumLibrary
Library  String
Library  DateTime

Resource  Common_Keywords.robot
Resource  Menu_Keywords.robot
Resource  Products_Keywords.robot
Resource  Login_Keywords.robot

*** Variables ***
${TIMEOUT}    8s
${SELENIUM_SPEED}         0.0
${TITLE}        S2Retail