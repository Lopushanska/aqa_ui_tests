@first
Feature: Menu Items Headers check
As a Litecart Admin
I want to be able to login to admin panel http://localhost/litecart/admin
Sequentially click on each item in side menu (left) including all submenu items
For each new page verify if header is present on the page (element h1)


Scenario: Litecart Admin flow

Given I am not logged in visitor

When Admin is logged in
Then I see logo is displayed
And I see headers for each item and sub-item in side menu
