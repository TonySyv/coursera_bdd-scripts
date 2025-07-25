Feature: Search for a product by name

  Background:
    Given a list of products exists with availability status

  Scenario: Search for available products by name
    Given I set the "Available" dropdown to "True"
    When I press the "Search" button
    Then I should see the message "Success"
    And the available items from the Background data should be shown in the results
    And the unavailable items should not appear in the results
