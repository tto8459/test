#!/bin/bash
yum install -y httpd
systemctl start httpd
systemctl enable httpd
usermod -a -G apache ec2-user
chown -R ec2-user:apache /var/www
chmod 2775 /var/www
find /var/www -type d | xargs chmod 2775 
find /var/www -type f | xargs chmod 0664
