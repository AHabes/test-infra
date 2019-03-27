#!/bin/bash

set -o errexit

readonly SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# shellcheck disable=SC1090
source "${SCRIPT_DIR}/library.sh"

VMS=$(gcloud compute instances list --limit 2 | tail -n +2 | awk '{print $1}')

shout "vm instances are as  --------->  ${VMS}"
