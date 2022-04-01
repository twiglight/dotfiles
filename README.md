# Twiglights dotfiles...

## Usage
At the moment I manage these dotfiles with [Ansible]{https://docs.ansible.com/ansible/latest/index.html}, so this is a requirement to use these dotfiles.l

In the root of the repository there is a Makefile which sets some flags to keep the Ansible commands containted within the repository.

```bash
# Install all dependencies (excluding Ansible itself)
make
make install # install is the default so is not mandatory

# Just update all the configuration files (for when you already have all the dependencies
make update/config
```

Currently the following OSes are managed:
- Fedora (35)

Currently the following application etc are (partially) managed:
- python
- git
- ssh
- emacs
- vim
