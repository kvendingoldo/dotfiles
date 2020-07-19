#!/bin/bash

set -o pipefail -e
CURRENT_DIR=$(dirname ${BASH_SOURCE})
source "${CURRENT_DIR}/../.functions"

TOOLS=(
  zshrc
  tmux
)
