#!/bin/bash
yum update -y
yum install java -y
cd /opt/
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.7/bin/apache-tomcat-10.1.7-windows-x64.zip
unzip apache-tomcat-10.1.7-windows-x64.zip
rm -f *.zip
ln -s /opt/apache-tomcat-10.1.7 tomcat
cd tomcat/bin/
chmod 755 *.sh
sh startup.sh
