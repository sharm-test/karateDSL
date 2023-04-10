function fn() {
    var env = karate.env; //get java system property
    if(!env) {
        env = 'test-az1';
    }
var config = { //base config JSON
    env: ' ',
    'clientkey': ' ',
    'clientSecret': ' ',
     url: '',
     jwt: ''
};

if(env == 'test-az1'){
    config.env = 'TEST',
    config.clientkey = '',
    config.clientSecret = '',
    config.url = 'https://reqres.in/api/users?page=2'

}
if(env == 'test-az2'){
    config.env = 'TEST',
    config.clientkey = '',
    config.clientSecret = '',
    config.url = 'https://reqres.in/api/users?page=2'

}
if(env == 'syst-az1'){
    config.env = 'SYST',
    config.clientkey = '',
    config.clientSecret = '',
    config.url = 'https://reqres.in/api/users?page=1'

}
if(env == 'syst-az2'){
    config.env = 'SYST',
    config.clientkey = '',
    config.clientSecret = '',
    config.url = 'https://reqres.in/api/users?page=1'

}
 karate.configure('connectTimeout',10000)
 karate.configure('readTimeout',10000)
 karate.configure('ssl','TLSv1.2')

return config;

}
