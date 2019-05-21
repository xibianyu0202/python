#!/bin/bash
sed -i 'd' /root/.ssh/known_hosts

for ((i=1;i<=8;i++))
do
virsh snapshot-create-as elk$i snapshot1
done
