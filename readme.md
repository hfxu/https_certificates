#SSL Certificates Generation Shell 
<strong>This project only works on Apache Tomcat.</strong>

##Envirment
1.openssl<br>
2.jre

##Operating System
1.Linux<br>
2.Mac OS X<br>
3.Windows<br>

##Choose the shell
unix/*.sh  These shell scripts work on Unix System(Such as Linux or OS X).<br>
windows/*.bat These bat scripts work on Windows.<br>

##Get Started
1.Please check the property of 'server_subject' in the scripts,the property of 'CN' means your server ip or domain name.<br>
2.Run generate_ca.* to generate root certificates.(<strong>If you already have ca.crt and ca.key ,you can ignore this step.</strong>)<br>
3.Run generate_https.* to generate ssl certificates.<br>
At last,add the ca/ca.crt in your devices.and use server/server.keystore in your tomcat.Here is the sample  configuration of tomcat's server.xml
`<Connector SSLEnabled="true" clientAuth="false" keystoreFile="E:/env/https/server/server.keystore" keystorePass="123456" maxThreads="150" port="443" protocol="org.apache.coyote.http11.Http11Protocol" scheme="https" secure="true" sslProtocol="TLS"/>`

##Author
Haifeng Hsu<br>
Email:hfxu@rinslet.com

##More Help
Please visit [rinslet.com](http://www.rinslet.com/?p=121)