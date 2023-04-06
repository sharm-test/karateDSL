Feature: Delete all created ids
Scenario: Delete all the created ids
* url 'https://reqres.in/api/users?page=2'
* method GET
* def dataids = $.data[*].id
#get all the ids that are available
* print dataids
* def createdids = karate.mapWithKey(dataids,'id')
* print createdids
#call the delete feature for each of the ids above
* def delid = call read('deleteid.feature') createdids