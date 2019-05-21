#!/bin/bash
expect << EOF
spawn  ansible ha  -m authorized_key -a "user=root exclusive=true manage_dir=true key='$(< /root/.ssh/id_rsa.pub)'" -k
expect {
"password:" {send "123456\r";exp_continue}
}
EOF

