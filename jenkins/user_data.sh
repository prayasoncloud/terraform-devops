#!/bin/bash
sudo yum update -y 
sudo amazon-linux-extras install java-openjdk11 -y
sudo amazon-linux-extras install epel -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
sudo sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install jenkins -y
sudo systemctl start jenkins 
sudo hostnamectl set-hostname jenkins-server
