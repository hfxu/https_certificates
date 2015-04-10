@echo off

echo AUTO GENERATE SSL CERTIFICATES SHELL.
echo ROOT CA GENERATION
echo Author:hfxu@rinslet.com
echo. 
set ca_subject="/C=CN/ST=Shanghai/L=Shanghai/O=Rinlet.Org/OU=www.rinslet.com/CN=Rinslet.Root.CA"
set pass=123456

echo #ca_subject=%ca_subject%
echo #pass=%pass%
echo.
echo Press make sure the parameters are what you want,then Enter to continue or close the window to terminate.
pause

md ca
openssl genrsa -out ca\ca.key 4096
openssl req -x509 -new -key ca\ca.key -out ca\ca.crt -days 730 -subj %ca_subject% -sha256

pause
