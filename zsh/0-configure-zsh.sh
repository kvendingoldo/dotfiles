#!/bin/bash

set -o pipefail -e
CURRENT_DIR=$(dirname ${BASH_SOURCE})
source "${CURRENT_DIR}/../.functions"

SCRIPTS=(
  zsh_aliases
  zsh_aliases_extra
  zshrc
  zsh_scripts
)

_title 'Copy zsh files'
for script in ${SCRIPTS[@]};do
  _install "copy ${script} to ~/.${script}"
  ln -sfv ${PWD}/${script} ${HOME}/.${script}
done
