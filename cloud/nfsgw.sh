#!/bin/bash
ssh elk1 hostnamectl set-hostname nn01
ssh elk2 hostnamectl set-hostname node1
ssh elk3 hostnamectl set-hostname node2
ssh elk4 hostnamectl set-hostname node3
ssh elk5 hostnamectl set-hostname node4
ssh elk6 hostnamectl set-hostname nfsgw
