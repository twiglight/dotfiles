# Twiglight's dotfiles...

## Usage
At the moment I manage these dotfiles with [Ansible](https://docs.ansible.com/ansible/latest/index.html), so this is a requirement to use these dotfiles.

In the root of the repository there is a Makefile which sets some flags to keep the Ansible commands containted within the repository.

```bash
# Install all dependencies (excluding Ansible itself)
make
make install # install is the default so is not mandatory

# Just update all the configuration files (for when you already have all the dependencies
make update/config
```

*There seems to be a bit of a problem with installing languages after just installing asdf. As the asdf bin command needs to be added to the .bashrc file, bash needs to reload this (or start a new session or something). Else it doesn't recognize the asdf command... For now the fix for me is just retrying the command*

Currently the following OSes are managed:
- Pretty much only Ubuntu based systems at this time

Currently the following application etc are (partially) managed:
- python
- git
- ssh
- emacs
- vim
- asdf
  * ruby (3.1.1)
  * rust (1.60.0)
  * go (1.18.1)
  * crystal (1.4.1)
- docker
