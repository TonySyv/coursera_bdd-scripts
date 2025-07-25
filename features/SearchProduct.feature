Feature: Search for a product based on category

  Background:
    Given a list of products exists with categories including Food

  Scenario: Search by Food category
    Given the page is cleared
    When I select the "Food" category
    And I press the Search button
    Then I should see the message "Success"
    And I should see "Big Mac" in the results
    And I should not see other products from different categories
