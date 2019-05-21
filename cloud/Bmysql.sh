#!/bin/bash
sed -i '4a validate_password_policy=0' /etc/my.cnf
sed -i '5a validate_password_length=6' /etc/my.cnf
systemctl restart mysqld
pass=`awk '/password /{print $NF}' /var/log/mysqld.log`
echo $pass
