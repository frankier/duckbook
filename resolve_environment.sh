#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

repo2docker --no-run https://github.com/binder-examples/conda-freeze
REF=$(\
  repo2docker --no-run https://github.com/binder-examples/conda-freeze |& \
  sed 's/^Reusing existing image (\([^)]*\)).*$/\1/' |
  tail -1
)
echo "REF:$REF:FER"
docker run \
  --mount type=bind,source="$(pwd)",destination=/z/ \
  --workdir=/z/ \
  --entrypoint="" \
  -it $REF \
  /z/z.sh

#mamba remove -n duckbook_tmpbuild --all
#mamba env create --name duckbook_tmpbuild --file unresolved_environment.yml
#mamba env export --from-history --name duckbook_tmpbuild --file environment.yml
