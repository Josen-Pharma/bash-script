#!/bin/bash
echo 'Kindly create a devoted user. Best to use "tomcat"'
sleep 3
echo "Updating apt and installing unzip"
sudo apt update -y
sudo apt install unzip -y
sleep 3
echo "Installing Java"
sudo apt install openjdk-17-jre-headless -y
sleep 2
echo "Chnaging directory to opt"
cd /opt
sleep 1
echo "Downloading tomcat zip"
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.105/bin/apache-tomcat-9.0.105.zip
echo "Unzipping the zipped file"

sudo unzip apache-tomcat-9.0.105.zip
sudo rm -rf apache-tomcat-9.0.105.zip
sleep 1
echo "Renaming unzipped file to tomcat"
sudo mv apache-tomcat-9.0.105 tomcat

echo "Kindly input the devoted tomcat  username you created"
read usr
sudo chown -R $usr:$usr /opt/tomcat
echo "Making the files that ends with .sh  executable"
sudo chmod 777 /opt/tomcat/bin/*.sh
echo "Tomcat started and ready to be ran"
echo "Please change user to your tomcat devoted user and run '/opt/tomcat/bin/startup.sh' to start tomcat"
