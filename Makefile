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
install:
	ansible-galaxy collection install -r $(ansible_dir)/requirements.yml
	ansible-playbook -i $(ansible_dir)/inventory.yml $(ansible_dir)/dotfiles.yml -K

update/config:
	ansible-playbook -i $(ansible_dir)/inventory.yml $(ansible_dir)/dotfiles.yml -t config
