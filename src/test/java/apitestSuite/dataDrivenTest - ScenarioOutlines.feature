Feature: Get a user information and update the name

  Background:
    * def SingleUserUrl = SingleUserUrl # get from config file

  Scenario Outline: Use the examples to set the name in the recurring requests
    * url SingleUserUrl
    * method GET
    * status 200

# we will use the GET response as a inpput request for the PUT

    * def personinfoResponse = $.data
    * print "Response from the GET request ",personinfoResponse
# now make a PUT request by updating the name
    * set personinfoResponse.first_name = '<newname>'
    * print "Updated request body ",personinfoResponse

# making a PUT request
    * url SingleUserUrl
    * request personinfoResponse
    * method PUT
    * status 200
    * print response

    Examples:
      | newname |
      | Jack |
      | Doe |
      | Helen |
      | Marie |