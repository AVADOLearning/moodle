@mod @mod_book
Feature: In a book, have the option to go back to previous chapter
  In order to resume reading my last viewed chapter
  As a user
  I need the option to jump back to the chapter from my last reading session.

  Background:
    Given I log in as "admin"
    And the following "users" exist:
      | username | firstname | lastname | email |
      | student | stewart | dent | stewart.dent@example.com |
    And the following "courses" exist:
      | fullname | shortname | format |
      | Course 1 | C1 | topics |
    And the following "course enrolments" exist:
      | user | course | role |
      | student | C1 | student |
    And I am on "Course 1" course homepage with editing mode on
    And I follow "Add an activity or resource"
    And I set the field "item_book" to "1"
    And I press "Add"
    And I set the following fields to these values:
      | Name | Book 1 |
    And I press "Save and display"
    And I set the following fields to these values:
      | Chapter title | Chapter 1 |
      | Content | Chapter 1 |
    And I press "Save changes"
    And I follow "Add new chapter"
    And I set the following fields to these values:
      | Chapter title | Chapter 2 |
      | Content | Chapter 2 |
    And I press "Save changes"
    And I log out

  @javascript
  Scenario: Can navigate back to previous session chapter
  Given I log in as "student"
  And I am on "Course 1" course homepage
  And I click on "Book 1" "link"
  Then I should not see "Want to pick up where you left off?"
  When I click on ".booknext" "css_element"
  Then I should see "Chapter 2" in the "#region-main" "css_element"
  When I am on "Course 1" course homepage
  And I click on "Book 1" "link"
  Then I should see "Want to pick up where you left off?"
  When I press "Yes please!"
  Then I should see "Chapter 2" in the "#region-main" "css_element"
