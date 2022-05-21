@smoke
Feature: Is it Friday yet?
  Everybody wants to know when it's Friday

  @regression
  Scenario: Sunday isn't Friday
    Given today is Sunday
    When I ask whether it's Friday yet
    Then I should be told "Nope"

  @regression
  Scenario: Sunday is Today
    Given today is Sunday
    When I ask whether it's Friday yet
    Then I should be told "Nope"

  @negative
  Scenario: Today isn't Friday
    Given today is Sunday
    When I ask whether it's Friday yet
    Then I should be told "Nope"