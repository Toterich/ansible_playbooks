# Ansible Playbooks

A collection of Ansible playbooks to deploy and configure various machines.

## How to use

### Variables
The `group_vars` directory contains `.example` files for variables to be set by the user. In order to use these playbooks, you should copy those, strip them of the `.example` extension, and modify them as needed.

### Preparation of target nodes
In order to use these playbooks, the host first needs to be prepared. Execute the `prepare.yml` playbook (see below) to create a deployment
user on the host that will be used by the other playbooks.

### Specify Hosts
To configure a single machine with Ansible, you don't need to define an inventory file. Instead, just pass the hostname to
the playbook command like this (note the ,):

    ansible-playbook -i <HOSTNAME>, playbook.yml

## Playbooks

### Prepare

This playbook creates a user named "ansible" on the target node that will be used by the other playbooks in this repo. For authentication of this user, specify a public ssh key in `vars/prepare_vars.yml`.

NOTE: The "ansible" user is configured for passwordless sudo. After configuration of the target node is done, it is probably good to delete it again for security reasons (See playbook `teardown.yml`).

### Mediacenter RaspberryPi

This playbook is intended to configure a Raspberry Pi for use as a media center.

#### Tested on
* RaspberryPi 4B 8GB
* 32GB SD storage
* RaspberryPi OS Lite 64Bit
