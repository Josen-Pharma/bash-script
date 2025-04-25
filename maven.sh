#!/bin/bash
echo "This script is used for installing maven"
echo "it is advisable to run this command in a devoted user"
sudo apt update -y
sudo apt install maven -y
sleep 3
echo "Maven installed"
