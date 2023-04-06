Feature: Make a GET request to reqres API 
Scenario: Call the GET users API
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200