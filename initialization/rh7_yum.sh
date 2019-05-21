#!/bin/bash
echo "[rhel7]
name=rhel7
baseurl=ftp://192.168.4.254/rhel7/
enabled=1
gpgcheck=0" > /etc/yum.repos.d/rhel7.repo
