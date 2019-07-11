#!/bin/bash
set -ex 
rm -rf ./ctn || true
yum -y install wget git python-setuptools
easy_install pip
pip install ansible
git clone https://github.com/vdonkor/ctn.git
echo "mypassword" > ./ctn/mypassword
ansible-playbook -i ./ctn/hosts --vault-password-file ./ctn/mypassword ./ctn/playbook.yml 