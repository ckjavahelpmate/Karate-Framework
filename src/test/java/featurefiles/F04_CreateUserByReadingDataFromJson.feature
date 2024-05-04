Feature: Create User


  Scenario: Create User with valid data
    Given url 'https://reqres.in/'
    And path '/api/register'
    * def body = read('../testdata/createUser.json')
    * set body.id = 8
    * print body
    * remove body.id
    * print body
    And request body
    When method post
    Then status 200 
    And print response