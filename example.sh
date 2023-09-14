#!/bin/bash
#
# github: https://github.com/ktlast/chore-scripts

# shellcheck source=./

source base.sh

function main {
  sourced_and_hint "logging"
  INFO "This is an info message."
  WARN "This is a warning message."
  ERROR "This is an error message."
}

main