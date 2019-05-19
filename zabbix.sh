#!/bin/bash
read -p '请输入你要创建的虚拟机组的组名' gname
i=1
while [ $i -le 3 ]
do
  qemu-img  create -b /var/lib/libvirt/images/node.qcow2 -f qcow2 /var/lib/libvirt/images/$gname$i.img 20G > /dev/null
  cp /opt/node.xml /etc/libvirt/qemu/$gname$i.xml
  sed -i "s/node/$gname$i/g" /etc/libvirt/qemu/$gname$i.xml
  cd /etc/libvirt/qemu
  virsh define $gname$i.xml > /dev/null
  virsh start $gname$i
  let i++
done
