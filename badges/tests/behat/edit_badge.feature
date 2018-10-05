@core @core_badges @_file_upload
Feature: Award badges
  In order to change badge criteria
  As an admin
  I want to be able to edit badges that've been awarded without the users losing them

  @javascript
  Scenario: Admin can edit badges that've already been awarded, and recipients keep their badge
    Given I log in as "admin"
    And I navigate to "Add a new badge" node in "Site administration > Badges"
    And I set the following fields to these values:
      | Name | Profile Badge |
      | Description | Test badge description |
      | issuername | Test Badge Site |
      | issuercontact | testuser@example.com |
    And I upload "badges/tests/behat/badge.png" file to "Image" filemanager
    And I press "Create badge"
    And I set the field "type" to "Profile completion"
    And I expand all fieldsets
    And I set the field "First name" to "1"
    And I set the field "id_description" to "Criterion description"
    When I press "Save"
    Then I should see "Profile completion"
    And I should see "First name"
    And I should see "Criterion description"
    And I should not see "Criteria for this badge have not been set up yet."
    And I press "Enable access"
    And I press "Continue"
    And I should see "Recipients (1)"
    And I should see "This badge is currently available to users"
    And I press "Disable access"
    And I should see "This badge is currently not available to users"
    And I click on ".icon[title=Edit]" "css_element"
    And I set the field "First name" to "0"
    And I set the field "Mobile phone" to "1"
    When I press "Save"
    Then I should see "Profile completion"
    And I should not see "First name"
    And I should see "Mobile phone"
    And I press "Enable access"
    And I press "Continue"
    And I should see "Recipients (1)"