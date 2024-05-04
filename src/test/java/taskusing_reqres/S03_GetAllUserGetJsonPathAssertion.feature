Feature: Get Single User
  
  Scenario: Get Single User using valid data
    Given url reqresUrl
    And path '/api/users'
    And  param page = 2
    When method get
    Then match responseStatus == 200
    * def name = karate.jsonPath( response , '$.data[ ?( @.id == 8)].first_name')
    * print name
    And match name contains "Lindsay"
    And match header Server == 'cloudflare'
    And assert responseTime <= 2000



