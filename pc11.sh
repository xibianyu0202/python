#!/bin/bash
read -p '请输入你要传输的文件名称:' file
scp -r /root/zhu2019/$file  pc11:/var/ftp/NSD1812p/屈艺/$file
