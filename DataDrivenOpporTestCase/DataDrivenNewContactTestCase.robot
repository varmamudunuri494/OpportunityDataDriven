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

Editing the Existing Record
    [Tags]             Edit the Anish Oil Agency Opportunities
    [Documentation]    Editing the Anish Oil Agency Opportunity
    Appstate           Home
    LaunchApp          Sales
    ClickText          Opportunities
    ClickText          Select a List View: Opportunities
    TypeText           //div[@class\='slds-form-element__control slds-grow slds-input-has-icon slds-input-has-icon_left-right']//input[@class\='slds-input']    Anish Oil Agency\n
    ClickText          Anish Oil Agency
    ClickText          Details
    ClickText          Edit Next Step
    TypeText           //div[@class\='slds-form-element__control slds-grow']//input[@name\='TrackingNumber__c']    256321471280
    TypeText           //div[@class\='slds-form-element__control slds-grow']//input[@name\='NextStep']    Need to Analysis Varma
    PickList           *Stage                      Qualification
    PickList           Lead Source                 Phone Inquiry
    TypeText           Description                 Editing Varma Industries ${ContactName}
    ClickText          Save                        partial_match=False
