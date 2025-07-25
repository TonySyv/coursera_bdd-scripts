Feature: Search for products based on availability

  Background:
    Given a list of products with availability status

  Scenario: Search for available products
    Given I set the "Available" dropdown to "True"
    When I press the "Search" button
    Then I should see the message "Success"
    And I should see available items in the results
    And I should not see unavailable items in the results
