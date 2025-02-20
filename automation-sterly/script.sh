!#/bin/bash
sudo sed -i -e "s|mirrorlist=|#mirrorlist=|g" /etc/yum.repos.d/CentOS-*
sudo sed -i -e "s|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g" /etc/yum.repos.d/CentOS-*
sudo yum update -y
sudo yum -y install epel-release
sudo yum -y install python3-virtualenv.noarch
sudo yum -y install python36
sudo hostnamectl set-hostname ansible-master.local
sudo yum -y repolist
sudo yum install ansible -y
sudo yum -y install git
sudo reboot
