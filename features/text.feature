Feature: text
  As a site user
  I want to list, add, read, update and delete texts
  So that I can share my autoral texts and read texts made by other students

  Scenario: add a text while logged on
    Given I am in the texts page
    And I am logged on as student 'alissonavlis96@gmail.com' with password '123456'
    When I click New Text
    And I fill Title with 'The green tree' and Content with 'There was a green tree.'
    And I click Create Text
    Then I see a confirmation message that the text is created

  Scenario: add a text without being logged on
    Given I am in the texts page
    When I click New Text
    Then I see the log in page

  Scenario: add a text without title
    Given I am in the texts page
    And I am logged on as student 'alissonavlis96@gmail.com' with password '123456'
    When I click New Text
    And I fill Content with 'There was a green tree.'
    And I click Create text
    Then I see an error message that the text is not created

  Scenario: add a text without content
    Given I am in the texts page
    And I am logged on as student 'alissonavlis96@gmail.com' with password '123456'
    When I click New Text
    And I fill Title with 'The green tree'
    And I click Create text
    Then I see an error message that the text is not created

  Scenario: Edit  text with a new title while logged on
    Given I am in the texts page
    And I am logged on as student 'alissonavlis96@gmail.com' with password '123456'
    When I click Edit on the text titled 'The green tree'
    And I fill title with 'The red tree'
    And I click Update Text
    Then I  see a confirmation message that the text is edited

  Scenario: Edit text with a new content while logged on
    Given I am in the texts page
    And I am logged on as student 'alissonavlis96@gmail.com' with password '123456'
    When I click Edit on the text titled 'The green tree'
    And I fill content with 'There was a green tree.'
    And I click Update Text
    Then I see a confirmation message that the text is edited

  Scenario: Delete text while logged off
    Given I am in the texts page
    When I click Delete on the text titled 'The green tree'
    Then I see the log in page

  Scenario: Delete another user text
    Given I am in the texts page
    And I am logged on as student 'alissonavlis96@gmail.com' with password '123456'
    When I click Delete on the text titled 'The yellow car'
    Then I see an error message that the text is not deleted

  Scenario: Delete text as admin
    Given I am in the texts page
    And I am logged on as admin 'professor@gmail.com' with password '654321'
    When I click Delete on the text titled 'The red tree'
    And I see a message to confirm deletion
    When I click Ok
    Then I see a confirmation message that the text is deleted

  Scenario: Edit text while logged off
    Given I am in the texts page
    When I click Edit on the text titled 'The green tree'
    Then I see the log in page