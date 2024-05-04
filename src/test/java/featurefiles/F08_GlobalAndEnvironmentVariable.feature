Feature: Global Variable using config file

  # We can create Global variables in config file and use in every feature file
  # For every feature file config file will be executed
  #Syntax-01
  Scenario: Global Variable using config file syntax-01
    * print "id :: " , id
    * print "username :: " ,username
    * print "city :: " , city

#Syntax-02 using embedded Expression
  Scenario: Global Variable using config file syntax-02 using embedded Expression
    * print `id ::  , ${id}`
    * print `username ::  ,${username}`
    * print `City ::  , ${city}`

# We can declare Variables in config and we can provide that to json Object using embedded expression
  Scenario: Embedded Expression reading data from config file
    * def user = { id : '#(id)' , username : '#(username)' , city : '#(city)' }
    * print user

# We can declare Variables in config and we can read that from json and from json we can provide to feature file
  Scenario: Embedded Expression reading data from config file through json file
    * def user = read('../testdata/readingDataFromConfig.json')
    * def id = get user.id
    * print id

