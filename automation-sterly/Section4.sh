#!/bin/bash
sudo yum -y update
sudo yum -y install httpd
sudo yum -y systemctl start httpd
sudo yum -y systemctl status httpd
sudo yum -y install telnet
sudo yum -y install network-tools
sudo yum -y install ansible
sudo yum list installed
dnf list installed
cat /etc/os-release
sudo yum search plot
sudo dnf search plot
dnf info gnuplot
sudo yum -y install gnuplot
sudo yum -y install firefox
sudo yum -y install python3
sudo yum -y install epel-release
sudo yum -y install elinks
sudo reboot
