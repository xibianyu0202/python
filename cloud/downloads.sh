#!/bin/bash
lftp 192.168.4.254 << EOF
get hadoop-2.7.6.tar.gz
bye
EOF
