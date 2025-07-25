Feature: List All Products

  Background:
    Given the product catalog includes:
      | Name    | Category  | Price |
      | Hat     | Fashion   | 300   |
      | Shoes   | Fashion   | 1500  |
      | Big Mac | Food      | 200   |
      | Sheets  | Bedding   | 750   |

  Scenario: Successfully list all products
    When I press the Clear button
    And I press the Search button
    Then I should see a message "Success"
    And the results should include the following products:
      | Name    |
      | Hat     |
      | Shoes   |
      | Big Mac |
      | Sheets  |
