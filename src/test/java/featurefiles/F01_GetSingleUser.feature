Feature: Get Single User
  
  Scenario: Get Single User using valid data
    Given url reqresUrl
    And path '/api/users/2'
    * print "Name :: ", name
    When method get
    Then status 200
    And print response
  