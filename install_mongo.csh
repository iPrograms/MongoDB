#!/bin/csh

#Import the public key used by the package management system.
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "Importing the public key used by the package management system"

#Create a list file for MongoDB.Reload local package database.
echo 'creating list file for MongoDb.Reload local package database...'
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
echo 'Done creating list file for MongoDb.Reload!'

#Reload local package database.
echo 'Reloading local package database...'
sudo apt-get update
echo 'Done Reloading local packag database'

#Install the MongoDB packages.
echo 'Installing MongoDB packages...'
sudo apt-get install -y mongodb-org
echo 'Done installing MongoDB packages'

#start mongodb 
sudo service mongod start



