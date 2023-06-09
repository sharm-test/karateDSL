Feature:

Scenario:
Try to login to git hub 

Given driver 'https://github.com/login'
And input('#login_field','abcd')
And input('#password','hello')
When submit().click("input[name=commit]")
Then match html('.flash-error') contains 'Incorrect'
And screenshot()

