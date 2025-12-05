Feature: Get all menu items

  Background: 
    * def testData = read('classpath:homeApiTest/inventory/data/inventory-testdata.json')
    * def commonData = call read('classpath:homeApiTest/inventory/common/InventoryCommon.feature')
    * url baseUrl
    * def validJson = testData.validJson
    * set validJson.name = "Baked Rolls x 8"
    * set validJson.image = "roll.png"
    * set validJson.price = "$10"
    * karate.log("Updated json is: ", validJson)

   
  Scenario: Get all inventory items successfully
    Given path 'api/inventory'
    When method get
    Then status 200
    * def inventory = response.data
    * def responseTime = responseTime
    * eval karate.log('Response Time:', responseTime)
    * eval karate.log('Inventory size:', inventory.length)
    * match inventory != null
    * match each inventory == { id: '#notnull', name: '#notnull', image: '#notnull', price: '#notnull' }
    * match inventory[*] contains validJson