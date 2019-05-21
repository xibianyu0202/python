#!/bin/bash
doc=`ifconfig eth0 | awk '/inet / {print $2} ' | awk -F[.] '{print $4}' | cut -b 2`
#hostnamectl set-hostname node$doc
echo $doc
