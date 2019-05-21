#!/bin/bash
for ((i=1;i<=8;i++))
do
virsh shutdown cloud$i
done
#for k in kibana logstash
#do
#virsh shutdown $k
#done
