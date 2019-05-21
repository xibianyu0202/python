#!/bin/bash
content=$(cat /root/p2)
for i in $content 
do
rm -rf $i
done
