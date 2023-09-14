#!/bin/bash

# This script is used to change stdout and stderr format.
# Usage: source logging.sh

export KTLAST_CHORE_LOGGING="1"  # to mark sourced or not for parent script.

_NC_='\033[0m'  # no color

function INFO {
  local CYAN
  CYAN='\033[36m'
  echo -e "[${CYAN}INFO${_NC_}] $*"
}

function WARN {
  local YELLOW
  YELLOW='\033[33m'
  echo -e "[${YELLOW}WARN${_NC_}] $*"
}

function ERROR {
  local RED
  RED='\033[31m'
  echo -e "[${RED}ERROR${_NC_}] $*"
}