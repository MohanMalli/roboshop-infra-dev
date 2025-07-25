#!/bin/bash

dnf install ansible -y
ansible-pull -u https://github.com/MohanMalli/roboshop-ansible-roles.git -e component = mongodb main.yaml