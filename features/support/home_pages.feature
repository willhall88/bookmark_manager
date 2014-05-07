Feature: Viewer visits the Home Page
  In order to read the page
  As a viewer
  I want to see the homepage

  Scenario: View home page
    Given I am on the home page
    Then I should see "Bookmark manager"

  Scenario: Adding a bookmark
    Given I am on the home page
    And I fill in "title" with "Makers Academy"
    And I fill in "url" with "http://www.makersacademy.com"
    And I click "Add Bookmark"
    Then I should see "Makers Academy" in a link