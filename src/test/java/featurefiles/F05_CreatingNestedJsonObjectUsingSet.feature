Feature: Create Json Object using set keyword

  Scenario: Create nested json object using path and value keyword
    * set body
      | path           | value       |
      | id             | 8           |
      | name           | "Sheela"    |
      | Address.street | "#03"       |
      | Address.city   | "Bangalore" |
    * print body

  Scenario: Create nested json array of Object using path and value keyword
    * set body
      | path           | value       |
      | id             | 8           |
      | name           | "Sheela"    |
      | Address[0].street | "#03"       |
      | Address[0].city   | "Bangalore" |
      | Address[1].street | "#04"       |
      | Address[1].city   | "Chennai" |
    * print body
