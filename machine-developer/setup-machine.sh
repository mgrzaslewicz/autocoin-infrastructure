#!/usr/bin/env bash
set -x
REPOS_DESTINATION="${REPOS_DESTINATION:=~/repos/autocoin}"
ansible-playbook -K setup/install-tools.yml
ansible-playbook --extra-vars="repos_destination=${REPOS_DESTINATION}" setup/clone-repositories.yml
ansible-playbook --extra-vars="repos_destination=${REPOS_DESTINATION}" setup/maven-install.yml
