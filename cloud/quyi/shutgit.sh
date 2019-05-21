#!/bin/bash
read -p '请输入选项
１表示启动
２代表停止:' qd
if [ $qd -eq 1 ];then 
	for ((i=1;i<=5;i++))
	do
	virsh start git$i
	done
elif [ $qd -eq 2 ];then
	for ((i=1;i<=5;i++))
	do
	virsh shutdown git$i
	done
fi  
