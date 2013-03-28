Feature: view all the places that I can work remotely in my city
  In order to find out the best place I can go to work
  As a freelancer
  I want to view all the places that I can work remotely in my ci

  @javascript
  Scenario: when there is a place
    Given there is a place called "Starbucks do Rio Sul"
    When I go to "the homepage"
    Then I should see "Starbucks do Rio Sul" on the map
