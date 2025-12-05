Feature: Get all menu items

    Background: 
    * url baseUrl
  Scenario:  Verify all inventory items created through POST.
    Given  path 'api/inventory'
    When method get
    * def lengthOfResponse = response.data.length
    * def newID = (lengthOfResponse + 1).toString()
    * karate.log('New ID to be added:', newID)
    * def payload = { id: '#(newID)', name: 'TestName', image: 'TestImage.png', price: '$111' }
    * karate.log('Calling post method from CreateInventory.feature file for : ', payload)
    * def result = call read('classpath:homeApiTest/inventory/common/CreateInventory.feature'){payload: #(payload)}

    Given path 'api/inventory'
    When method get
    Then status 200
    * def inventory = response.data
    * def responseTime = responseTime
    * eval karate.log('Response Time:', responseTime)
    * eval karate.log('Inventory size:', inventory.length)
    * match inventory != null
    * match each inventory == { id: '#notnull', name: '#notnull', image: '#notnull', price: '#notnull' }
    * match inventory[*] contains payload