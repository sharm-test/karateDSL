Feature: Delete all created ids
Scenario: Delete all the created ids
* url 'https://reqres.in/api/users?page=2'
* method GET
* def dataids = $.data[*].id
* print dataids
* def createdids = karate.mapWithKey(dataids,'id')
* print createdids
* def delid = call read('deleteid.feature') createdids