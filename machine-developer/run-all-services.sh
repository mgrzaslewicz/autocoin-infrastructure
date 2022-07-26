#!/usr/bin/env bash
# Turn verbose mode on
set -x
# Exit when any command fails
set -e

REPOS_DESTINATION="${REPOS_DESTINATION:=~/repos/autocoin}"
ansible-playbook --extra-vars="repos_destination=${REPOS_DESTINATION}" run/run-auth-service.yml
ansible-playbook --extra-vars="repos_destination=${REPOS_DESTINATION}" run/run-frontend.yml
