Feature: doubt
  As a site user
  I want to add, read and delete doubts
  So that I can solve my doubts and read the doubts made by other students

  Scenario: add a doubt while logged on
    Given I am in the doubts page
    And I am logged in as a student with login “Fulano” password “123”
    When I click add doubt
    And I fill Title with “How I can delete a post” and Content with “I want to delete one of my posts”
    And I click create doubt
    Then I see a confirmation message that the doubt has created

  Scenario: add a doubt without a title
    Given I am in the doubts page
    And I am logged in as a student with login “Fulano” password “123”
    When I click add doubt
    And I fill Content with “I want to delete one of my posts”
    When I click create doubt
    Then I see an error message that the doubt has created

  Scenario: add a doubt without a Content
    Given I am in the doubts page
    And I am logged in as a student with login “Fulano” password “123”
    When I click add doubt
    And I fill Title with “How I can delete a post”
    When I click create doubt
    Then I see an error message that the doubt has created

  Scenario: edit a doubt title
    Given I am in the doubts page
    And I am logged on as a student with login “Fulano” password “123”
    When I click edit the doubt with title “How I can delete a post” and Content with “I want to delete one of my posts”
    And I fill title with “Solved - How I can delete a post”
    And I click confirm edition
    Then I see a confirmation message that the doubt has edited

  Scenario: edit a doubt Content
    Given I am in the doubts page
    And I am logged on as a student with login “Fulano” password “123”
    When I click edit the doubt with title “How I can delete a post” and Content with “I want to delete one of my posts”
    And I fill Content with “I really want to know how to delete a post”
    And I click confirm edition
    Then I see a confirmation message that the doubt has edited
  Scenario: edit a doubt to have no title
    Given I am in the doubts page
    And I am logged on as a student with login “Fulano” password “123”
    When I click edit the doubt with title “How I can delete a post” and Content with “I want to delete one of my posts”
    And I erase the title
    And I click confirm edtion
    Then I see an error message that the doubt has edited

  Scenario: edit a doubt to have no Content
    Given I am in the doubts page
    And I am logged on as a student with login “Fulano” password “123”
    When I click edit the doubt with title “How I can delete a post” and Content with “I want to delete one of my posts”
    And I erase Content
    And I click confirm edition
    Then I see an error message that the doubt has edited

  Scenario: delete a doubt
    Given I am in the doubts page
    And I am logged on as a student with login “Fulano” password “123”
    When I click delete the doubt with title “How I can delete a post” and Content with “I want to delete one of my posts”
    And this doubt was posted by me
    And I click confirm deletion
    Then I see a confirmation message that the doubt has deleted

  Scenario: edit a doubt title
    Given I am in the doubts page
    And I am logged on as a teacher with login “Admin” password “321”
    When I click edit the doubt with title “How I can delete a post” and Content with “I want to delete one of my posts”
    And I fill title with “Solved - How I can delete a post”
    And I click confirm edition
    Then I see a confirmation message that the doubt has edited

  Scenario: delete a doubt
    Given I am in the doubts page
    And I am logged on as a teacher with login “Admin” password “321”
    When I click delete doubt the doubt with title “How I can delete a post” and Content with “I want to delete one of my posts”
    And I click confirm deletion
    Then I see a confirmation message that the doubt has deleted
