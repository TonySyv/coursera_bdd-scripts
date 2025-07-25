Feature: Product Management

  Scenario: Reading a Product
    Given a product exists with the following details:
      | id | name    | description       | price |
      | 1  | Sundae  | Vanilla dessert   | 5.50  |
    When I request the product details for product with id 1
    Then I should receive the product details:
      | id | name    | description       | price |
      | 1  | Sundae  | Vanilla dessert   | 5.50  |


Feature: Delete Product

  Background:
    Given the product catalog contains the following items:
      | Id   | Name        | Category  | Price |
      | P001 | Coffee Mug  | Kitchen   | 250   |
      | P002 | Laptop Stand| Office    | 1200  |
      | P003 | Phone Case  | Gadgets   | 450   |

  Scenario: Successfully delete an existing product
    Given I search for a product named "Coffee Mug"
    Then I should see a message "Success"
    And the product details should include:
      | Id   | Name       | Category | Price |
      | P001 | Coffee Mug | Kitchen  | 250   |
    When I copy the product Id
    And I clear the form
    And I paste the product Id
    And I press the Delete button
    Then I should see a message "Product has been Deleted!"
    When I press the Clear button
    And I press the Search button
    Then the product named "Coffee Mug" should not be in the results
