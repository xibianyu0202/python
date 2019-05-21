#!/bin/bash
read -p '请输入端口号:' tcp
ss -antulp | grep $tcp
echo > /root/.ssh/known_hosts
