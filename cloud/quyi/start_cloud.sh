#!/bin/bash
for ((i=1;i<=8;i++))
do
virsh start cloud$i
done

