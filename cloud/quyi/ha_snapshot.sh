#!/bin/bash
#sed -i 'd' /root/.ssh/known_hosts
#for ((i=1;i<=8;i++))
#do
#virsh snapshot-delete elk$i snapshot1
#done

#ansible elk -m authorized_key -a "user=root exclusive=true manage_dir=true key='$(< /root/.ssh/id_rsa.pub)'" -k

for ((i=1;i<=8;i++))
do
virsh snapshot-create-as hadoop$i snapshot1
done
