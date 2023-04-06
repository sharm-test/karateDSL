Feature: Delete single ID
Scenario: Delete id
    * url 'https://reqres.in/api/users'
* path 'api/users/',id
* method DELETE
* status 204