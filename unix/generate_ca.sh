echo AUTO GENERATE SSL CERTIFICATES SHELL.
echo ROOT CA GENERATION
echo Author:hfxu@rinslet.com
echo ************************ 
ca_subject="/C=CN/ST=Shanghai/L=Shanghai/O=Rinslet.Inc/OU=www.rinslet.com/CN=Rinslet.Root.CA"
pass=123456

echo ca_subject=$ca_subject
echo pass=$pass
echo ***********************

mkdir ca
openssl genrsa -out ca/ca.key 4096
openssl req -x509 -new -key ca/ca.key -out ca/ca.crt -days 730 -subj $ca_subject -sha256


