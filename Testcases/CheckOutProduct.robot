*** Settings ***
Documentation   User must be able to checkout the given product
Library         SeleniumLibrary
Resource        ../Resources/Steps.robot

*** Variables ***
${browser}      Chrome
${url}          https://www.saucedemo.com/
${username}     standard_user
${password}     secret_sauce
${firstName}    Sauce
${lastName}     Labs
${zipCode}      411041
${productname}  Jacket


*** Test Cases ***
LoginTest
    Given Open My Browser   ${url}      ${browser}
    Enter Username      ${username}
    Enter Password      ${password}
    Click on Login Button
    Verify Successful login
    Select One Product      ${productname}
    Click on Add to cart
    Click on the Cart Link
    Click on chekout button
    Add User Details    ${firstName}    ${lastName}     ${zipCode}
    Click on continue button
    Click on Fisnish button
    Verify Order Successful Message
