#!/bin/bash
# install terraform in ubuntu server
#sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
#curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
#sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt update
sudo apt install  software-properties-common gnupg2 curl
curl https://apt.releases.hashicorp.com/gpg | gpg --dearmor > hashicorp.gpg
sudo install -o root -g root -m 644 hashicorp.gpg /etc/apt/trusted.gpg.d/
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt install terraform
terraform -version

# OR

# sudo apt install wget unzip -y
# wget https://releases.hashicorp.com/terraform/0.12.26/terraform_0.12.26_linux_amd64.zip
# sudo unzip terraform_0.12.26_linux_amd64.zip -d /usr/local/bin/
# Export terraform binary path temporally
# export PATH=$PATH:/usr/local/bin
# Add path permanently for current user.By Exporting path in .bashrc file at end of file.
# echo  "export PATH=$PATH:/usr/local/bin" >> ~/.bashrc
# Source .bashrc to reflect for current session
# source ~/.bashrc 
# terraform -version
