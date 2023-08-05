*** Settings ***
Library  SeleniumLibrary
Resource  ../Automation/user defained keywords with Python/resource_py.robot
Library  os

*** Variables ***

*** Test Cases ***
folder
    folder_create