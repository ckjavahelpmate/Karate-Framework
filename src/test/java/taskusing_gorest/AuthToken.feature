Feature: GET API feature

  Background:
* configure ssl = { trustAll: true }

  Scenario: get user details
    * print tokenID
    Given header Authorization = 'Bearer '+ tokenID
    Given url baseUrl+'/public/v1/users'
    And path '2178419'
    When method get
    Then status 200