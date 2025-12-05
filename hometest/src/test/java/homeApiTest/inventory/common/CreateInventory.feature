Feature: Common reusable steps for Inventory API

  Background:
    * url baseUrl
    * configure headers = { Accept: 'application/json', Content-Type: 'application/json' }
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true
    
  Scenario: Perform POST operation on caller's JSON payload
    * def payload =  __arg.payload
    Given path 'api/inventory/add'
    * karate.log('Request body being uploaded:', payload)
    And request payload
    When method post
    Then status 200