Feature: GET API feature

  Background:
    * configure ssl = { trustAll: true }

  Scenario: get user details
    Given url baseUrl+'/public/v1/users'
    And path '2178419'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * print jsonResponse
    * def actName = jsonResponse.data.name
    * def actId = jsonResponse.data.id
    * def actEmail = jsonResponse.data.email
    * print actName
    * match actName == 'Gov. Vimal Banerjee'
    * match actId == 2178419
    * match actEmail == 'vimal_banerjee_gov@altenwerth.example'


  Scenario: get user details - user not found
    Given url baseUrl+'/public/v1/users'
    And path '1'
    When method GET
    Then status 404