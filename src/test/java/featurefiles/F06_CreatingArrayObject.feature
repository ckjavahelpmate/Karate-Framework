Feature: Create Array Object

  Scenario: Create Array Object
    * set body
      | path | 0        | 1      | 2       |
      | id   | 8        | 9      | 10      |
      | name | "Sheela" | "Mala" | "Leela" |
    * print body

  Scenario: Create Array Object Empty
    * set body
      | path | 0        | 1      | 2       |
      | id   | 8        |        |         |
      | name | "Sheela" | "Mala" | "Leela" |
    * print body

  Scenario: Create Array Object null
    * set body
      | path | 0        | 1      | 2       |
      | id   | 8        | (null) | (null)  |
      | name | "Sheela" | "Mala" | "Leela" |
    * print body


