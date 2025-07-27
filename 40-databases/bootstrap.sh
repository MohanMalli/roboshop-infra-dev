#!/bin/bash

component=$1
dnf install ansible -y
ansible-pull -U https://github.com/MohanMalli/roboshop-ansible-roles.git -e component="$1" -C main main.yaml