Feature: comment
  As a site user
  I want to add, read and delete comments
  So that I can comment and interact with other users in posts throughout the site

  Scenario: Add a comment in a Text while logged on
    Given I am logged on as student 'alissonavlis96@gmail.com' with password '123456'
    And I am in the texts page
    And the text entitled 'The green tree' exists
    When I click Show on the text titled 'The green tree'
    And I fill comment Content with 'Hello everyone'
    And I click Create Comment
    Then I see a confirmation message that the comment is created

  Scenario: Add a comment in a Text without content
    Given I am logged on as student 'alissonavlis96@gmail.com' with password '123456'
    And I am in the texts page
    And the text entitled 'The green tree' exists
    When I click Show on the text titled 'The green tree'
    And I click Create Comment
    Then I see an error message that the comment has not been created

  Scenario: Add a comment in a Doubt without being logged on
    Given I am in the doubts page
    And the doubt entitled 'How to delete post' exists
    When I click Show on the doubt titled 'How to delete post'
    And I fill comment Content with 'Hello everyone'
    And I click Create Comment
    Then I see the log in page

  Scenario: Add a comment in a doubt page with more than 500 characters
    Given I am logged on as student 'alissonavlis96@gmail.com' with password '123456'
    And I am in the doubts page
    And the doubt entitled 'How to delete post' exists
    When I click Show on the doubt titled 'How to delete post'
    And I fill comment Content with 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
    And I click Create Comment
    Then I see an error message that the comment is not created

  Scenario: Add a comment in a text page with less than 10 characters
    Given I am logged on as student 'alissonavlis96@gmail.com' with password '123456'
    And I am in the texts page
    And the text entitled 'The green tree' exists
    When I click Show on the text titled 'The green tree'
    And I fill comment Content with 'Hello'
    And I click Create Comment
    Then I see an error message that the comment is not created