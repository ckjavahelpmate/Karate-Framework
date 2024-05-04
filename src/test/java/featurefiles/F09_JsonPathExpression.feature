Feature: Json Path Expression

  Scenario: Json Path Expression using get keyword
    * def user = read('../testdata/readingDataFromConfig.json')
    * def id = get user.id
    * print id

  Scenario: Json Path Expression using get and dollar Expression
    * def user = read('../testdata/readingDataFromConfig.json')
    * def id = get user $.id
    * print id

  Scenario: Json Path Expression using only dollar Expression
    * def user = read('../testdata/readingDataFromConfig.json')
    * def id = $user.id
    * print id

  Scenario: Json Path Expression using karate.get()
    * def user = read('../testdata/readingDataFromConfig.json')
    * def id = karate.get('$user.id')
    * print id

  # Using karate.jsonPath() we can store returned value in variable or directly use
  # Storing returned value
  Scenario: Json Path Expression using karate.jsonPath(jsonObject, requiredValue ) with storing data
    * def user = read('../testdata/readingDataFromConfig.json')
    * def id = karate.jsonPath(user , '$.id')
    * print ` id :: ${id}`

 # Without Storing returned value
  Scenario: Json Path Expression using karate.jsonPath(jsonObject, requiredValue ) without storing data
    * def user = read('../testdata/readingDataFromConfig.json')
    * print ` id ==> ${karate.jsonPath(user , '$.id')}`
    * print ` id ==> ${karate.get('$user.id')}`

 # Using WildCard ( * )
  Scenario: Json Path Expression using wildcard
    * def data = read('../testdata/nestedJson.json')
    * print karate.jsonPath( data , '$.books[*].id')
    * print karate.get('$data.books[*].id')

 # Using deep search ( .. )
  Scenario: Json Path Expression using deep search
    * def data = read('../testdata/nestedJson.json')
    * print karate.jsonPath( data , '$..id')
    * print karate.get('$data..id')

 # Using condition ( ?(@.key))
  Scenario: Json Path Expression using condition expression
    * def data = read('../testdata/nestedJson.json')
    * print karate.jsonPath( data , '$.books[ ?( @.id == 99)].title')
    * print karate.get('$data.books[ ?( @.id == 100 )].title')

# Using indexes
  Scenario: Json Path Expression using indexes
    * def data = read('../testdata/nestedJson.json')
    # select Books by index
   * print karate.jsonPath( data , '$.books[ 0,3 ]')
    # Select books by range end range is excluded
   * print karate.jsonPath( data , '$.books[ 0:4 ]')
   * print karate.jsonPath( data , '$.books[ -1 ]')
    # Number of books
  * print ` Number of Books :: ` + karate.jsonPath( data , '$.books.length()')





