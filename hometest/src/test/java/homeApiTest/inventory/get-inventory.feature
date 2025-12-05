Feature: Get all menu items

  Background: 
    * def testData = read('classpath:homeApiTest/inventory/data/inventory-testdata.json')
    * def commonData = call read('classpath:homeApiTest/inventory/common/inventory-common.feature')
    * url baseUrl
   
  Scenario: Get all inventory items successfully
    Given url baseUrl
    And path 'api/inventory'
    When method get
    Then status 200
    * def inventory = response.data
    * def responseTime = responseTime
    * eval karate.log('Response Time:', responseTime)
    * eval karate.log('Inventory size:', inventory.length)
    * match inventory != null
    * match each inventory == { id: '#notnull', name: '#notnull', image: '#notnull', price: '#notnull' }
    * assert inventory.length >= 9

    Scenario: Filter by valid ID
      Given url baseUrl
      And path 'api/inventory/filter'
      And param id = testData.filterID
      When method get
      Then status 200
      And match response.name == testData.expectedFilterName