@second
Feature: Cart operations test
As a Litecart Admin
I want to be able to login to admin panel http://localhost/litecart/admin
And go through E2E scenario for Cart operations test

Scenario: Litecart Admin E2E flow

Given I am not logged in visitor

When Admin is logged in
Then I see logo is displayed

When I Open Catalog on the Left menu
And Click 'Add New Product' button on right top
And Fill all mandatory fields on General tab
And Attach a picture to the product
And Fill some data on Information tab
And Fill in the Price
And Save the Product
Then I can make sure that new product appeared in catalog
When I Open Main page
Then I can see and open newly created product
When I add the product to the cart
And Open any other type of Duck and add it to the card
Then I can Verify that counter of the items in the cart changes
When I Open the Cart by click 'Checkout' button at right-top
Then I can Remove all products from the cart one-by-one
