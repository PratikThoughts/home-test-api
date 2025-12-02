Feature: Inventory API Tests

  Background:
    Given url 'http://localhost:3100/'
    Scenario: Get all menu items
    Given path 'api/inventory'
    When method get
    Then status 200
    And match each response.data == {id : '#notnull', name : '#notnull', image: '#notnull', price :'#notnull'}
    And assert response.data.length >= 9
    And print  response

    Scenario: Filter by id
    Given path '/api/inventory/filter'
    And param id = 3
    When method get
    Then status 200
    And match response.name == 'Baked Rolls x 8' 

    Scenario: Add item for non existent id
      Given path 'api/inventory'
      When method get
      * def lengthOfResponse = response.data.length
      * def newID = (lengthOfResponse + 1).toString()
    
      Given path 'api/inventory/add'
      And request
      """
      {
        id: "#(newID)",
        name: "Hawaiian",
        image: "hawaiian.png",
        price: "$14"
      }
      """
      When method post
      Then status 200
      * print responseStatus, response

    Scenario: Add item for existent id
      Given path 'api/inventory/add'
      And request
      """
      {
       id: "10",
        name: "Hawaiian",
        image: "hawaiian.png",
        price: "$14"
      }
      """
      When method post
      * print responseStatus, response
      Then match responseStatus == 400
      And match response == "Bad Request"

    Scenario:Try to add item with missing information
      Given path 'api/inventory/add'
      And request 
      """
      {
        name: "Hawaiian",
        image: "hawaiian.png",
        price: "$14"
      }
      """
      When method post
      * print  responseStatus, response
      Then match responseStatus == 400
      And match response == "Not all requirements are met"

  
  Scenario: "Validate recent added item is present in the inventory"
    Given path 'api/inventory'
    When method get
    * print response
    Then match response.data[*] contains
    """
     {
      "id": "10",
      "name": "Hawaiian",
      "image": "hawaiian.png",
      "price": "$14"
     }
    """
