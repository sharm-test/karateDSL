Feature: Delete all created ids
Scenario: Delete all the created ids
* url url
* method GET
* def dataids = $.data[*].id
#get all the ids that are available
* print "The data ids are :",dataids
* def createdids = karate.mapWithKey(dataids,'id')
* print "JSON array of ids :", createdids
#call the delete feature for each of the ids above
* def delid = call read('deleteid.feature') createdids