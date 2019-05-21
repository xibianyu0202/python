#!/bin/bash
echo 1 >  /proc/sys/net/ipv4/conf/lo/arp_ignore
echo 2 >  /proc/sys/net/ipv4/conf/lo/arp_announce
echo 1 >  /proc/sys/net/ipv4/conf/all/arp_ignore
echo 2 > /proc/sys/net/ipv4/conf/all/arp_announce

