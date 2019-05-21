#!/bin/bash
for ((i=1;i<=8;i++))
do
virsh snapshot-revert cloud$i snapshot1
done

