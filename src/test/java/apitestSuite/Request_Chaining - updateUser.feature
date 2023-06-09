
Feature: Get a user information and update the name

Background: 
    * def SingleUserUrl = SingleUserUrl ## get from config file

Scenario: Get a user with id = 1 and update the name
    * url SingleUserUrl
    * method GET
    * status 200

# we will use the GET response as a input request for the PUT

    * def personinfoResponse = $.data
    * print "Response from the GET request ",personinfoResponse

# now make a PUT request by updating the name
    *  set personinfoResponse.first_name = "New User"
    * print "Updated request body ",personinfoResponse

# making a PUT request
    * url SingleUserUrl
    * request personinfoResponse
    * method PUT
    * status 200
    * print response

