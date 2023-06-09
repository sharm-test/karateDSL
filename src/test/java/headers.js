function fn () {
    karate.log ('Loading the headers from headers.js', env);

    if(env == 'test-az1') {
        return {  "X-Api-Key": abc, "X-Api-Secret": xyz, "Authorization": 'Bearer' + jwt}};
    if(env == 'test-az2') {
         return {  "X-Api-Key": bnm, "X-Api-Secret": fvb, "Authorization": 'Bearer' + jwt}};
    if(env == 'syst-az1') {
            return {  "X-Api-Key": def, "X-Api-Secret": xyz, "Authorization": 'Bearer' + jwt}};
    if(env == 'syst-az2') {
             return {  "X-Api-Key": ghi, "X-Api-Secret": fvb, "Authorization": 'Bearer' + jwt}};
    }

