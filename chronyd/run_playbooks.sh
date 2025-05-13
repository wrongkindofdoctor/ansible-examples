#!/usr/bin/env bash
# Set pyenv env variables 
set PYENV_ROOT "${HOME}/.pyenv"
set PATH "${PYENV_ROOT}/bin:${PATH}"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
# print simple command trace
#set -x
# Activate the ansible pyenv environment
echo "Actvating ansible environment"
pyenv activate ansible
# run the playbook
ansible-playbook -i orb_inventory.rb --become playbook.yml