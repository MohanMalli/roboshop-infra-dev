#!/bin/bash

component=$1
dnf install ansible -y
<<<<<<< HEAD
ansible-pull -U https://github.com/MohanMalli/roboshop-ansible-roles.git -e component="$1" -C main main.yaml
=======
ansible-pull -U https://github.com/MohanMalli/roboshop-ansible-roles-tf.git -e component=$1 -e env=$2  main.yaml
>>>>>>> 4d20c48 (terraform)
