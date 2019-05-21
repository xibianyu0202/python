#!/bin/bash
read -p '请输入组名:' node
ansible $node -m authorized_key -a "user=root exclusive=true manage_dir=true key='$(< /root/.ssh/id_rsa.pub)'" -k

