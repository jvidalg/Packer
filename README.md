## Packer images for CentOS in AWS and Azure

CentOS images for AWS AMI and Azure Blob, provisioned through Ansible and Bash.

##### Ansible roles:
- common
- docker-ce-master
- nginx
- mariadb

##### Bash
- Installation of packages needed for Ansible and Python


###### Generate Images
###### AWS
1. Validate the syntax of your template:
```bash
packer validate aws_centos.json
```
1. Generate the AMI in your AWS Account:
```bash
packer build aws_centos.json
```

###### Azure
1. Validate the syntax of your template:
```bash
packer validate -var-file=azure_variables.json azure_centos.json
```
1. Generate the Blob in your Azure Account:
```bash
packer build -var-file=azure_variables.json azure_centos.json
```


