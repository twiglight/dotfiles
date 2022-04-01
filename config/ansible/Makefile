#
# CONFIG
#

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(abspath $(dir $(mkfile_path)))
.DEFAULT_GOAL := install

#
# TARGETS
#
install:
	ansible-playbook -i $(mkfile_dir)/hosts $(mkfile_dir)/dotfiles.yml -K
