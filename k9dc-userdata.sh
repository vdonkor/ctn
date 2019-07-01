#!/bin/bash
yum -y install wget git python-setuptools s3cmd
easy_install pip
pip install ansible 
git clone https://github.com/vdonkor/ctn.git
cd ctn
ansible-playbook k9dc.yml 