Feature: User Login

  Scenario: Successful login with valid credentials
    Given the user is on the login page
    When the user enters a valid username and password
    And the user clicks the login button
    Then the user should be redirected to the homepage
    And the user should see a welcome message

  Scenario: Unsuccessful login with invalid credentials
    Given the user is on the login page
    When the user enters an invalid username and password
    And the user clicks the login button
    Then the user should see an error message

  Scenario: Unsuccessful login with empty username and password
    Given the user is on the login page
    When the user leaves the username and password fields empty
    And the user clicks the login button
    Then the user should see an error message indicating that the fields are required

  Scenario: Unsuccessful login with only username filled
    Given the user is on the login page
    When the user enters a valid username and leaves the password field empty
    And the user clicks the login button
    Then the user should see an error message indicating that the password is required

  Scenario: Unsuccessful login with only password filled
    Given the user is on the login page
    When the user leaves the username field empty and enters a valid password
    And the user clicks the login button
    Then the user should see an error message indicating that the username is required