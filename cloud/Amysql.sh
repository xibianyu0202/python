#!/bin/bash
yum -y install perl-Data-Dumper  perl-JSON  perl-Time-HiRes
mkdir /root/mysql-5.7.17
tar -xvf /root/mysql-5.7.17.tar -C /root/mysql-5.7.17
cd /root/mysql-5.7.17
yum -y install mysql-community-*
sleep 5
systemctl start mysqld
systemctl enable mysqld
#sed -i '4a validate_password_policy=0' /etc/my.cnf
#sed -i '5a validate_password_length=6' /etc/my.cnf
#systemctl restart mysqld
pass=`awk '/password /{print $NF}' /var/log/mysqld.log`
echo $pass
#mysql -uroot -p$pass -e "create database db1"
