@Latihan
Feature: Create user API
  Scenario Outline: Create new user with valid json
    Given Create new user with valid file json "<fileName>"
    When Send request post create user
    Then Status code should be 201
    And Response body name should be "<name>" and job should be "<job>"
    And Validate json schema "create_user_json_schema.json"
    Examples:
    |fileName        |name  |job        |
    |create_user.json|Rahmad|QE Engineer|
