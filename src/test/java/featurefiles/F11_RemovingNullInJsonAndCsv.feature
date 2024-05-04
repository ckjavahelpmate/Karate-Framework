Feature: Data Driven Testing

  Scenario Outline: removing null in json file

    * def jsonUtils = Java.type('utils.JsonUtils')
    * def data = jsonUtils.removeNullValues( __row )
    * print data
    * print __row

    Examples:
      |read('../testdata/MOCK_DATA.json')|


  Scenario Outline:removing null in csv file
    * def jsonUtils = Java.type('utils.JsonUtils')
    * def data = jsonUtils.removeNullValues( __row )
    * print data
    * print __row

    Examples:
     |read('../testdata/MOCK_DATA.csv')|

