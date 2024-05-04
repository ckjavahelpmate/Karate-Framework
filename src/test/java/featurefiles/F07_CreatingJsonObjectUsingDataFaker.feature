Feature: Create Json Object using Data Faker

  Scenario: Create Json Object using Data Faker
    * def dataFaker = Java.type("net.datafaker.Faker")
    * def dfo = new dataFaker()
    * set body
      | path           | value                      |
      | id             | dfo.number().digits(3)     |
      | name           | dfo.name().fullName()      |
      | Address.street | "#"+dfo.number().digits(2) |
      | Address.city   | dfo.address().city()       |
    * print body

  Scenario: Create Json Object using Data Faker custom java class
    * def dfo = Java.type("utils.RandomDataGenerator")
    * set body
      | path           | value                |
      | id             | dfo.getNumber(3)     |
      | name           | dfo.getFullName()    |
      | Address.street | "#"+dfo.getNumber(2) |
      | Address.city   | dfo.getCity()        |
    * print body

