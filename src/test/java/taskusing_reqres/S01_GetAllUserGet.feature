Feature: Get Single User
  
  Scenario: Get Single User using valid data
    Given url reqresUrl
    And path '/api/users'
    And  param page = 2
    When method get
    Then match responseStatus == 200
    And match responseHeaders["Server"][0] == 'cloudflare'
    And match header Server == 'cloudflare'
    And print response

