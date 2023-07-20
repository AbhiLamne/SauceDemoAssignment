*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObject/Locators.py
Library     ../PageObject/Elements.py
Library     BuiltIn
Library     string

*** Keywords ***
Open My Browser
    [Arguments]     ${url}      ${browser}
    open browser    ${url}      ${browser}
    maximize browser window

Enter Username
    [Arguments]     ${username}
    clear element text      ${username_textbox}
    input text      ${username_textbox}     ${username}

Enter Password
    [Arguments]     ${password}
    clear element text      ${password_textbox}
    input text      ${password_textbox}     ${password}

Click on Login Button
    click button    ${Login_Button}

Verify Successful login
    sleep   3s
    title should be     Swag Labs

Select One Product
    [Arguments]     ${productname}
    sleep   3s
    ${ClickProduct}=        Elements.SpecificItem        ${productname}
    click element    ${ClickProduct}
    sleep   3s

Click on Add to cart
    wait until element is visible   ${AddToCart}     10 seconds
    click button    ${AddToCart}
    sleep   3s

Click on the Cart Link
    wait until element is visible   ${ShoppingCartLink}     10 seconds
    scroll element into view    ${ShoppingCartLink}
    click element    ${ShoppingCartLink}

Click on chekout button
    click button    ${CheckOutButton}
    sleep   3s

Add User Details
    [Arguments]     ${firstName}    ${lastName}     ${zipCode}
    wait until element is visible   ${ContinueButton}     10 seconds

    clear element text      ${txt_FirstName}
    input text      ${txt_FirstName}     ${firstName}

    clear element text      ${txt_LastName}
    input text      ${txt_LastName}     ${lastName}

    clear element text      ${txt_ZipCode}
    input text      ${txt_ZipCode}     ${zipCode}
    sleep   3s

Click on continue button
    click button    ${ContinueButton}
    sleep   3s

Click on Fisnish button
    wait until element is visible   ${FinishButton}     10 seconds
    click button    ${FinishButton}
    sleep   3s

Verify Order Successful Message
    wait until element is visible   ${ThankYouMsg}     10 seconds
    sleep   5s