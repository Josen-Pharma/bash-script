#!/bin/bash

echo "This script is for installing and running sonarqube"
sleep 1
echo "Please run create a new user and run the script in the opt directory of the new user"
# cd /opt
echo "Make sure user has sudo priviledge"
sleep 1
echo "Updating the package manager"
sleep 1
sudo apt update -y
echo "Installing wget and unzip"
sleep 2
sudo apt install unzip wget -y
sleep 1
echo "Installing Java"
sudo apt install openjdk-17-jdk -y
sleep 2
echo "Installing sonarqube"
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.4.1.88267.zip
sleep 1
echo " Unzipping zip file"
sudo unzip sonarqube-10.4.1.88267.zip
sleep 1
echo "Removing sonarqube-10.4.1.88267.zip"
sudo rm -rf sonarqube-10.4.1.88267.zip
sleep 1
echo "Renaming the Sonarqube-10.4.1.88267 to Sonarqube"
sudo mv sonarqube-10.4.1.88267 sonarqube
sleep 3
echo "Please input the name of the User you are running this script"
read user
echo "Changing Permission"
sudo chown -R $user:$user /opt/sonarqube
sleep 2
echo "Starting Sonarqube"
sh /opt/sonarqube/bin/linux-x86-64/sonar.sh start
sleep 1
echo "Sonarqube can be acessed on localhost:9000, Also open port on server"
