Feature: Welcome Page
  In order to provide a landing page
  A visitor
  Should be able to access a home page

  Scenario: Visits home page before login
    Given I am on the home page
    Then I should see the welcome message
      And I should see a sign in link
      And I should see a registration link
      And I should not see a log out link

  Scenario: Visits home page after login
    Given I am logged in
      # And I am on the home page
    Then I should be logged in
      # I should see my user name
      # And I should see a log out links
      # And I should see a profile link
      # And I should not see a sign in link
      # And I should not see a registration link
