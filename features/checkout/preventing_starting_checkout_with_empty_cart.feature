@checkout
Feature: Preventing starting checkout with an empty cart
    In order to proceed through the checkout correctly
    As a Customer
    I want to be prevented from accessing checkout with an empty cart

    Background:
        Given the store operates on a single channel in "United States"
        And the store allows paying offline
        And the store ships everywhere for free
        And the store has a product "PHP T-Shirt"
        And I am a logged in customer

    @ui
    Scenario: Being unable to start checkout addressing step with an empty cart
        When I try to open checkout addressing page
        Then I should be redirected to my cart summary page

    @ui
    Scenario: Being unable to start checkout shipping step with an empty cart
        Given I added product "PHP T-Shirt" to the cart
        And I specified the billing address as "Ankh Morpork", "Frost Alley", "90210", "United States" for "Joe Doe"
        When I remove product "PHP T-Shirt" from the cart
        And I try to open checkout shipping page
        Then I should be redirected to my cart summary page

    @ui
    Scenario: Being unable to start checkout payment step with an empty cart
        Given I added product "PHP T-Shirt" to the cart
        And I specified the billing address as "Ankh Morpork", "Frost Alley", "90210", "United States" for "Joe Doe"
        And I completed the shipping step
        When I remove product "PHP T-Shirt" from the cart
        And I try to open checkout payment page
        Then I should be redirected to my cart summary page

    @ui
    Scenario: Being unable to start checkout complete step with an empty cart
        Given I added product "PHP T-Shirt" to the cart
        And I specified the billing address as "Ankh Morpork", "Frost Alley", "90210", "United States" for "Joe Doe"
        And I completed the shipping step
        And I completed the payment step
        When I remove product "PHP T-Shirt" from the cart
        And I try to open checkout complete page
        Then I should be redirected to my cart summary page
