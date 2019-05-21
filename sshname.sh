#!/bin/bash
ssh ha1 hostnamectl set-hostname nn1
ssh ha2 hostnamectl set-hostname node1
ssh ha3 hostnamectl set-hostname node2
ssh ha4 hostnamectl set-hostname node3
ssh ha5 hostnamectl set-hostname node4
