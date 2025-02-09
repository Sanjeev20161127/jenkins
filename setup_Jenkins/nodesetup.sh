#!/bin/bash

# Build machine setup.
# Command 1
echo "Running command 1:: OS update"
sudo apt update
if [ $? -ne 0 ]; then
    echo "Command 1 failed"
else
    echo "Command 1 succeeded"
fi

# Command 2
echo "Running command 2 :: jdk setup"
sudo apt install -y openjdk-17-jdk
if [ $? -ne 0 ]; then
    echo "Command 2 failed"
else
    echo "Command 2 succeeded"
fi

# Command 3
echo "Running command 3"
sudo hostnamectl set-hostname buildMachine
if [ $? -ne 0 ]; then
    echo "Command 3 failed"
else
    echo "Command 3 succeeded"
fi

# Command 4
echo "Running command 4"
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64/bin/java
if [$? -ne 0]; then
     echo "Command 4 failed"
else
   echo "Command 4 succeeded"
fi

# Command 5
echo "Running command 5 : setup java home at profile level"
echo "export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64" >> ~/.bashrc
if [$? -ne 0]; then
     echo "Command 5 failed"
else
   echo "Command 5 succeeded"
fi

# Command 6
echo "Running command 6: java version information"
echo $JAVA_HOME
if [$? -ne 0]; then   
     echo "Command 6 failed"
else 
     echo "Command 6 succeeded"
fi

#end of the script file.



