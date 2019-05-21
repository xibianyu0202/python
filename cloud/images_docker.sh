#!/bin/bash
lftp 192.168.4.254 << EOF
get docker_images.zip
exit
EOF
