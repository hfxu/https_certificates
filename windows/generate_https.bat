@echo off

echo AUTO GENERATE SSL CERTIFICATES SHELL.
echo Author:hfxu@rinslet.com
echo SERVER HTTPS CERTIFICATES GENERATION
echo. 
set server_subject="/C=CN/ST=Shanghai/L=Shanghai/O=Rinlset.Org/OU=rinslet.https/CN=192.168.16.196"
set pass=123456

echo #server_subject=%server_subject%
echo #pass=%pass%
echo.
echo Press make sure the parameters are what you want,then Enter to continue or close the window to terminate.
pause 

md server
openssl genrsa -out server\server.key 4096
openssl req -new -out server\server.req -key server\server.key -subj %server_subject% -sha256
openssl x509 -req -in server\server.req -out server\server.cer -CAkey ca\ca.key -CA ca\ca.crt -days 730 -CAcreateserial -CAserial  server\server.serial -sha256
openssl pkcs12 -export -in server\server.cer -inkey server\server.key -out server\server.p12 -name "server" 
keytool -importkeystore -v -srckeystore  server\server.p12 -srcstoretype pkcs12 -srcstorepass %pass% -destkeystore server\server.keystore -deststoretype jks -deststorepass %pass%

pause
