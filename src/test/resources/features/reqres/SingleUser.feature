Feature: Get single user API
  @tugas
  Scenario Outline: Get single user with valid parameter page
    Given Single user with id <id>
    When Send request get single user
    Then Status code should be 200
    And Response body page should be "<first_name>" and "<last_name>"
    And Validate json schema "single_user_json_schema.json"
    Examples:
    |id|first_name|last_name|
    |2   |Janet     |Weaver   |

    @tugas
    Scenario Outline: Get single user not found
      Given Single user with id <id>
      When Send request get single user
      Then Status code should 404
      Examples:
      |id|
      |23|