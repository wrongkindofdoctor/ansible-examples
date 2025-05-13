#!/usr/bin/env bash
# set working directory variable to current directory 
work_dir = $(pwd)
# Set pyenv env variables 
set PYENV_ROOT "${HOME}/.pyenv"
set PATH "${PYENV_ROOT}/bin:${PATH}"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
# printcommand trace
#set -x
# Activate the ansible pyenv environment
echo "Actvating ansible environment"
pyenv activate ansible
# run the playbook
ansible-playbook -i ${work_dir}/../orb_inventory --become playbook.yml