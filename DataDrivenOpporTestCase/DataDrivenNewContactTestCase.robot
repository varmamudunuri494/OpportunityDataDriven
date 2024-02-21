*** Settings ***
Documentation          New test suite
Library                QForce                      #This library is build for Saleforce. # It is a extension of QWeb
Library                String
Library                DateTime
Suite Setup            Open Browser                about:blank                 chrome
Suite Teardown         Close All Browsers
Resource               ../DataDrivenCommonResource/DataDrivenCommon.robot

*** Test Cases ***
Creating a New Opportunity through Data Driven
    [Tags]             Opportunities
    [Documentation]    Creating a new Opportunity through Data Driven
    Appstate           Home
    LaunchApp          Sales
    ClickText          Opportunities
    ClickText          New
    UseModal           On
    TypeText           *Opportunity Name           ${Opportunity Name}
    ComboBox           Search Accounts...          ${Account Name}
    PickList           Type                        ${Type}
    PickList           Lead Source                 ${Lead Source}
    PickList           *Opportunity Currency       ${Opportunity Currency}
    TypeText           radius                      ${radius}
    TypeText           height                      ${height}
    PickList           *Stage                      ${Stage}
    TypeText           *Close Date                 ${Close Date}
    #TypeText           *Close Date                 27/10/2025
    TypeText           Next Step                   ${Next Step}
    TypeText           Amount                      ${Amount}
    VerifyText         Additional Information
    TypeText           Order Number                ${Order Number}
    TypeText           Tracking Number             ${Tracking Number}
    PickList           Delivery/Installation Status                            ${DeliveryInstallation Status}
    VerifyText         Description Information
    TypeText           Description                 ${Description}
    ClickText          Save                        partial_match=False
    UseModal           Off
    Sleep              3s