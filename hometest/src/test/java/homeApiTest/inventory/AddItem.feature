Feature: Add inventory item

  Background: 
    * def testData = read('classpath:homeApiTest/inventory/data/inventory-testdata.json')
    * url baseUrl
    * def requestBody = testData.validJson

   
  Scenario: Add new valid item
    Given  path 'api/inventory'
    When method get
    * def lengthOfResponse = response.data.length
    * def newID = (lengthOfResponse + 1).toString()
    * karate.log('New ID to be added:', newID)
    * set requestBody.id = newID

    And path 'api/inventory/add'
    * karate.log('Request body being uploaded:', requestBody)
    And request requestBody
    When method post
    Then status 200

  Scenario: Add item with existing ID should fail
    Given path 'api/inventory/add'
    And request requestBody
    When method post
    Then status 400
    And match response == "Bad Request"

  Scenario: Add item missing required fields should fail
    * def body = { name: "Hawaiian", image: "hawaiian.png", price: "$14" }
    And path 'api/inventory/add'
    And request body
    When method post
    Then status 400
    And match response == "Not all requirements are met"
  