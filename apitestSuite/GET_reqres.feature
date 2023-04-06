Background:
    * configure headers = read('headers.js')
Feature: Make a GET request to reqres API 
Scenario: Call the GET users API
    Given url url
    When method GET
    Then status 200
    * match response.per_page == 6
    #asset that all the elements in data array contains all 5 keys
    * match $.data[*] contains {email: "#string",id: "#notnull"  ,first_name: "#string",last_name:"#string",avatar: "#present"}
    * def Ids = get $.data[*].id
    * print Ids