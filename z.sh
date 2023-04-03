#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

#mamba install --file=unresolved_environment.yml
mamba env update -n root --file=unresolved_environment.yml
mamba env export -n root > environment.yml
