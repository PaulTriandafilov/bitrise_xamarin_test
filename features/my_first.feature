Feature: Login feature
  Check calc functional

  Scenario: Calculator should correct sum
    Given The app is launched
      And I'm on the main screen
    When I fill in first_arg with 5
      And I fill in second_arg with 7
      And I click add_button button
    Then I should see "5.0 + 7.0 = 12.0" text
