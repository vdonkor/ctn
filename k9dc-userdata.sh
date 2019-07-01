#!/bin/bash
yum -y install wget git python-setuptools s3cmd
easy_install pip
pip install ansible boto boto3 botocore
git clone https://github.com/vdonkor/ctn.git
cd ctn
ansible-playbook k9dc.yml 