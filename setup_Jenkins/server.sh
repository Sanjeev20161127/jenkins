#!/bin/bash

# Command 1
echo "Running command 1"
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
command_1
if [ $? -ne 0 ]; then
    echo "Command 1 failed"
else
    echo "Command 1 succeeded"
fi

# Command 2
echo "Running command 2"
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
if [ $? -ne 0 ]; then
    echo "Command 2 failed"
else
    echo "Command 2 succeeded"
fi

# Command 3
echo "Running command 3"
sudo apt update
if [ $? -ne 0 ]; then
    echo "Command 3 failed"
else
    echo "Command 3 succeeded"
fi

# Command 4
echo "Running command 4"
sudo apt install -y fontconfig openjdk-17-jre
if [$? -ne 0]; then
     echo "Command 4 failed"
else
   echo "Command 4 succeeded"
fi

# Command 5
echo "Running command 5"
sudo apt install -y jenkins
if [$? -ne 0]; then
     echo "Command 5 failed"
else
   echo "Command 5 succeeded"
fi

# Command 6
echo "Running command 6"
sudo hostnamectl set-hostname jenkinsslave
if [$? -ne 0]; then
     echo "Command 6 failed"
else
   echo "Command 7 succeeded"
fi

# Command 7
echo "Running command 6"
sudo hostnamectl set-hostname jenkinsslave
if [$? -ne 0]; then
     echo "Command 6 failed"
else
   echo "Command 7 succeeded"
fi