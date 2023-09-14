#!/bin/bash

# shellcheck source=/dev/null


function sourced_and_hint {
  # Usage: sourced_and_hint "script_name"
  # NOTE: 
  #   1. script_name is the name of script without .sh
  #   2. script_name should be in utils/ directory
  local script_name
  local ktlast_env_name
  local script_name_uppercase
  script_name="./utils/${1}"
  script_name_uppercase=$(echo "${script_name}" | tr '[:lower:]' '[:upper:]')
  ktlast_env_name="KTLAST_CHORE_${script_name_uppercase}"
  [[ -z "${!ktlast_env_name}" ]] && echo "not sourced ${script_name}.sh yet"
  source "${script_name}.sh"
  [[ -n "${!ktlast_env_name}" ]] && echo "${script_name}.sh sourced"
}
