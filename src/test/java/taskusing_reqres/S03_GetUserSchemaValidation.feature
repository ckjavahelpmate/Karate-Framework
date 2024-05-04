Feature: Get Single User

  Scenario: Get Single User using valid data
    Given url reqresUrl
    And path '/api/users/2'
    When method get
    Then match responseStatus == 200
    And assert responseTime <= 2000
    And def expectedSchema =
    """
       {
  data: {
    "id": '#number',
    "email": '##string',
    "first_name": '#string',
    "last_name": '##string',
    "avatar": '##string'
  },
  support: {
    "url": '#string',
    "text": '##string'
  }
}
    """
    * print response
    And match response == expectedSchema





