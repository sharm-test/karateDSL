Feature: Create a user

Scenario: Create a user
    * url 'https://reqres.in/api/users'
    * request 
"""
    {
    "name": "morpheus",
    "job": "leader"
}
"""
* method POST
* status 201

