#!/bin/sh

USAGE="Usage: prepare_host.sh HOSTNAME REMOTEUSER"

[ $# -eq 2 ] || { echo $USAGE >&2; exit 1; }

ansible-playbook -i $1, --extra-vars "ansible_user=$2" prepare.yml
