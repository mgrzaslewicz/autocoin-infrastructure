#!/usr/bin/env bash
set -x
REPOS_DESTINATION="${REPOS_DESTINATION:=~/repos/autocoin}"
ansible-playbook --extra-vars="repos_destination=${REPOS_DESTINATION}" run/run-auth-service.yml
ansible-playbook --extra-vars="repos_destination=${REPOS_DESTINATION}" run/run-frontend.yml
