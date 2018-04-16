Feature: Creating calendar and adding event

  Background: 
    Given I logged into tiki-wiki

  @hikmet
  Scenario Outline: Create multiple calendars
    When I click on the Create Calendar tab
    And I enter the name "<name>" and "<description>"
    When click on the save button
    Then I should see calendars for "<name>"
    Then I logout from tiki-wiki

    Examples: 
      | name       | description                        |
      | Hustlers 1 | customized calendar for Hustlers 1 |
      | Hustlers 2 | customized calendar for Hustlers 2 |

  Scenario: Adding an Event
    When I am on Add Event page
    And I click on the Calendar dropdown menu to choose "Hustlers 1"
    And I enter the title "Meeting with the Team Lead"
    When click on the save button
    Then Event details page should be displayed
    And Data should match with created event data
    Then I logout from tiki-wiki
