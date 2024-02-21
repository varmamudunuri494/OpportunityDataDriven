*** Settings ***
Documentation          New test suite
Library                QForce                      #This library is build for Saleforce. # It is a extension of QWeb
Library                String
Library                DateTime
Suite Setup            Open Browser                about:blank                 chrome
Suite Teardown         Close All Browsers
Resource               ../DataDrivenCommonResource/DataDrivenCommon.robot

*** Test Cases ***
Creating a New Opportunity
    [Tags]             Opportunities
    [Documentation]    Creating a new Opportunities
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
    
