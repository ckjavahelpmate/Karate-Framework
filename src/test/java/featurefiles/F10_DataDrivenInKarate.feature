Feature: Data Driven Testing

  Scenario Outline: Data Driven Using Examples

    * def data =
    """
    {
      "uid" : ##(uid) ,
      "uname" : "##(uname)",
      "email" : "##(email)"
    }
    """
    * print data

    Examples:
      | uid  | uname   | email          |
      | 100 | Sheela | Sheela@123.com |
      | 200 |    | Mala@123.com   |


  Scenario Outline: Data Driven Using json
    * def data =
    """
    {
      "uid" : ##(uid) ,
      "uname" : '##(uName)',
      "email" : '##(email)'
    }
    """
    * print data

    Examples:
     |read('../testdata/MOCK_DATA.json')|

  Scenario Outline: Data Driven Using CSV file
    * def data =
    """
    {
      "uid" : ##(uid) ,
      "uname" : '##(uName)',
      "email" : '##(email)'
    }
    """
    * print data
    Examples:
     |read('../testdata/MOCK_DATA.csv')|