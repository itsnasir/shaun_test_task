@javascript
Feature: Update concurrent messages

  Scenario: user successfully update a message and see it in different window
    Given I go to messages page
    And I have messages
    When I fill first message form with "hello"
    And I go to messages page
    And I access the new tab
    Then I should see "hello" in first form
