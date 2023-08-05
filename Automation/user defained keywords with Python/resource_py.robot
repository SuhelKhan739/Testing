*** Settings ***
Library  SeleniumLibrary
Library  ../Automation/user defained keywords with Python/create folder.py
*** Test Cases ***
fplder
    folder_create
*** Keywords ***
folder_create
    crete_folder