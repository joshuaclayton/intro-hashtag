@javascript
Feature: Search Twitter
  In order to see current information about information I'm requesting
  As a visitor
  I should be able to search for tweets

  Scenario: Search for a specific hash tag
    When I search for the hash tag "rails"
    Then I should see tweets containing "#rails"
