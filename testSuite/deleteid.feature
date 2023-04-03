Feature: Delete single ID
Scenario: Delete id
* Given url 'https://reqres.in/'
* Given path 'api/users',2
* When method DELETE
* Then status 204