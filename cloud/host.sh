#!/bin/bash
read -p '请输入你要设置的主机名' host
hostnamectl set-hostname $host
