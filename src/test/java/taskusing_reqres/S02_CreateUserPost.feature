Feature: Create User
  
  Scenario: Create User with valid data
    Given url reqresUrl
    And path '/api/register'
    And request
    """
    {
    "email": "eve.holt@reqres.in",
    "password": "pistol"
    }
    """
    When method post
    Then status 200 
    And match response ==
  """
  {
  "id": 4,
  "token": "QpwL5tke4Pnpja7X4"
  }
  """
    And match $.id == 4
    And print response