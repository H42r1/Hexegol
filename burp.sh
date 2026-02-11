#!/bin/bash

# Installing Dependencies
echo "Installing Dependencies..."
sudo apt update
sudo apt install git wget -y

# Cloning
git clone https://github.com/xiv3r/Burpsuite-Professional.git 
cd Burpsuite-Professional

# Download Burpsuite Professional
echo "Downloading Burp Suite Professional Latest..."
version=2026
wget -O burpsuite_pro_v$version.jar https://github.com/xiv3r/Burpsuite-Professional/releases/download/burpsuite-pro/burpsuite_pro_v$version.jar

# Execute Burpsuite Professional
echo "Executing Burpsuite Professional..."
echo "java --add-opens=java.desktop/javax.swing=ALL-UNNAMED --add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED -javaagent:/opt/my-resources/git_tools/Burpsuite-Professional/loader.jar -noverify -jar /opt/my-resources/git_tools/Burpsuite-Professional/burpsuite_pro_v2025.jar &" > burpsuitepro
chmod +x burpsuitepro
cp burpsuitepro ~/.exegol/my-resources/bin/burpsuitepro
