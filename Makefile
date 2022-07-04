#
# CONFIG
#

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(abspath $(dir $(mkfile_path)))

ansible_dir := $(mkfile_dir)/config/ansible

.DEFAULT_GOAL := install

#
# TARGETS
#
requirements_fulfilled:
	ansible-galaxy collection install -r $(ansible_dir)/requirements.yml

install/develop: requirements_fulfilled
	ansible-playbook -i $(ansible_dir)/inventory $(ansible_dir)/develop.yml -K

install/htpc: requirements_fulfilled
	ansible-playbook -i $(ansible_dir)/inventory $(ansible_dir)/htpc.yml -K
