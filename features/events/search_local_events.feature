Feature: Search local events
  As a member of the public
  So that I can find out what's going on locally
  I want to search upcoming events

  Background: Events have been added to the database
    Given the following events exist:
      | title                | description             | start_date      | end_date        |
      | Young people party   | Good for everyone       | 1/01/2018       | 1/01/2018        |
      | Old people gathering | Look after older people | 8/01/2018       | 20/01/2018 |

  Scenario: Find out what's going on locally
    Given I visit the events page
    When I search for "older people"
    Then I should see the event details for "Old people gathering"
    And I should not see the event details for "Young people party"
    And the search box should contain "older people"