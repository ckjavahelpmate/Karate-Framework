Feature: Create User

  Scenario: Create User with valid data
    Given url reqresUrl
    And path '/api/users/2'
    And request
    """
    {
    "name": "morpheus",
    "job": "zion resident"
    }
    """
    When method put
    Then status 200
    And match response contains
  """
   {
    "name": "morpheus",
    "job": "zion resident",
  }
  """
    And print response