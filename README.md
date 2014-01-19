## Version 1

Rack app

## Version 2

Rack middleware

## Version 3

Mobile auth in middleware

## CURL

`curl -v -G http://localhost:9991`  
`curl -v -G -d "msg=hello" localhost:9992/stuff`  
`curl -v -d "username=user&password=secret" http://localhost:9993/session`  
```
curl -v -d "username=user&password=secret" \
-H 'Authorization: Token nonce="abc",timestamp="1234"' localhost:9993/session
```  
```
curl -v -G -d "msg=hello" \
-H 'Authorization: Token nonce="abc",timestamp="1234",consumer_key="123abc",signature="hash"' \
localhost:9993/stuff
```

