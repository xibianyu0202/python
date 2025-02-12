#!/bin/bash
read -p "请输入你要创建的虚拟机名称:" vname
qemu-img  create -b /var/lib/libvirt/images/node.qcow2 -f qcow2 /var/lib/libvirt/images/$vname.img 20G > /dev/null
cp /opt/logstash.xml /etc/libvirt/qemu/$vname.xml
sed -i "s/node/$vname/g" /etc/libvirt/qemu/$vname.xml
cd /etc/libvirt/qemu
virsh define $vname.xml > /dev/null
virsh start $vname


