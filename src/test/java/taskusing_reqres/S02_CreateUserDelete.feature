Feature: Create User

  Scenario: Create User with valid data
    Given url reqresUrl
    And path '/api/users/2'
    When method delete
    Then status 204
    And print response