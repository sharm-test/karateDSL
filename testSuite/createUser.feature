Feature: Create a user

Scenario: Create a user
#create a user
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

