@javascript
Feature: Search Twitter
  In order to see current information about information I'm requesting
  As a visitor
  I should be able to search for tweets

  @real-twitter
  Scenario: Search for a specific hash tag
    When I search for the hash tag "rails"
    Then I should see tweets containing "#rails"

  Scenario: Search Twitter with known results
    Given Twitter responds to the search "#rails" with the tweets:
      | text                                    |
      | #Rails is amazing                       |
      | I love #rails                           |
      | #rails is cool, but #backbone is cooler |
      | Fuck #Rails                             |
    And Twitter responds to the search "#ruby" with the tweets:
      | text                  |
      | #ruby is pretty great |
    When I search for the hash tag "rails"
    Then I should see the following tweets:
      | #Rails is amazing                       |
      | I love #rails                           |
      | #rails is cool, but #backbone is cooler |
      | Fuck #Rails                             |
    But I should not see the following tweets:
      | #ruby is pretty great |
