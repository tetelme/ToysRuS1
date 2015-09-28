Feature: acceptance test

#  Scenario: LogIn
#    Then I LogIn in Facebook

  #1
  Scenario: Verify that user can add any item to the cart
    Then Click the category Age and then click the subcategory 2 - 4 Years
    Then Pick the item number 1
    Then Click the Add to Cart
    Then Verify that 1 items added to the cart

  #2
  Scenario: Add two items to the cart for category Brand from two different subcategories
    Then Click category Brand
    Then Open subcategory Animal Planet
    Then Select subcategory Dinosaurs
    Then Pick the item number 1
    Then Click the Add to Cart
    Then Get back to the previous page
    Then Pick the item number 2
    Then Click the Add to Cart
    Then Verify that 2 items added to the cart
    Then Remove items from the Cart
    Then Verify that items removed from the cart

  #3
  Scenario: Add two identical items to the cart from category Clearance
    Then Click the catergory Clearance
    Then Click the subcategory Action Figures
    Then Pick the item number 1
    Then Enter two items in to the field
    Then Click the Add to Cart
    Then Verify that 2 items added to the cart

  #4
  Scenario: Add one item from the category Age and one item from the category Brand
    Then Click the category Age and then click the subcategory 2 - 4 Years
    Then Pick the item number 1
    Then Click the Add to Cart
    Then Get back to the main page
    Then Click category Brand
    Then Open subcategory Animal Planet
    Then Select subcategory Dinosaurs
    Then Pick the item number 1
    Then Click the Add to Cart
    Then Verify that 2 items added to the cart
    Then Remove items from the Cart
    Then Verify that items removed from the cart

  #5
  Scenario: Add third item to the cart from category Girl's toyes 8-11 Years Old
    Then Click category Girls' Toys
    Then Click the subcategory 8 - 11 years
    Then Pick the item number 3
    Then Click the Add to Cart
    Then Verify that 1 items added to the cart

  #6
  Scenario: Add second item from the category Clearance/ Action Figure
    Then Click the category Clearance
    Then Click subcategory Action Figure
    Then Pick the item number 1
    Then Click the Add to Cart

  #7
  Scenario: Check navigation to the Weekly Ad page
    Then Click Weekly Ad link
    Then Verify landing page Weekly Ad

  #8
  Scenario: Search for the items
    Then Search for the item Dress
    Then Verify that correct item Dress displays

  #9
  Scenario: Find elements with 5 stars
    Then Click the category Age and then click the subcategory 2 - 4 Years
    Then Verify that there are elements with 5 stars

  #10
  Scenario: Find all items with 5 stars rating and available for free store pickup
    Then Click the category Age and then click the subcategory Big Kids
    Then Find elements with 5 starts and available for free store pickup

  #11
  @acceptance
  Scenario: Register on ToysRUs page
    Then Click Sign In link
    Then Enter valid credentials


