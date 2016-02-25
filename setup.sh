#!/bin/sh

# setup os
yum upgrade -y
yum groupinstall -y "Development Tools"
yum install -y vim wget tree lsof tcpdump

# setting os
echo << TIME > /etc/sysconfig/clock
ZONE="Asia/Tokyo"
UTC="false"
TIME
source /etc/sysconfig/clock
/bin/cp -f /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# @see https://about.gitlab.com/downloads/#centos7

# setup postfix
yum -y install postfix
systemctl enable postfix
systemctl start postfix

# setup gitlab
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | bash
yum -y install gitlab-ce
gitlab-ctl reconfigure

# configure gitlab
cp /vagrant/conf/etc/gitlab/gitlab.rb /etc/gitlab/gitlab.rb
gitlab-ctl reconfigure

echo 'complete!!'
