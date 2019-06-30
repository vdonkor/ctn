#!/bin/bash
yum -y install wget git python-setuptools
easy_install pip
pip install ansible 
git pull https://github.com/vdonkor/ctn.git
cd ctn
ansible-playbook neo4j.yml 