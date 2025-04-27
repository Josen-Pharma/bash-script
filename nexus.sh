#!/bin/bash
echo "Please create a devoted server before you run this script on your ubuntu"
sleep 5
echo "Preferable to name the new user "nexus" "
sleep 5
echo "use Crtl C if you dont have a devoted user created"
sleep 5
echo "if user have been created already, then allow the script to run"
sleep 3
echo "Script started"
sleep 2
echo "Updating package manager"
sudo apt update -y
sleep 2
echo "Installing Java"
sudo apt install openjdk-17-jre-headless -y
cd /opt
echo "Installing nexus tar file"
sudo wget https://download.sonatype.com/nexus/3/nexus-3.79.1-04-linux-x86_64.tar.gz
sleep 2
echo "Unzipping file"
sudo tar -xvzf nexus-3.79.1-04-linux-x86_64.tar.gz
sudo rm -rf nexus-3.79.1-04-linux-x86_64.tar.gz
sleep 3
echo "Renaming nexus-3.79.1-04 to nexus"
sudo mv nexus-3.79.1-04 nexus
sleep 2
echo "Please input the name of the user you want to execute your nexus artifact"
read user
sudo chown -R $user:$user /opt/nexus
sudo chown -R $user:$user /opt/sonatype-work
echo "run_as_user='$user'" | sudo tee /opt/nexus/bin/nexus.rc
sleep 8
echo "We are almost done"
echo "Please log into the devoted user create and run '/opt/nexus/bin/nexus start' on your command"
echo "You can access nexus on Localhost:8081"
echo "Make sure you open port 8081 on your AWS"

                      
