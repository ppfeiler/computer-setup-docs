#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #

setup_echo() {
  command printf %s\\n "$*" 2>/dev/null
}

if [ -z "${BASH_VERSION}" ] || [ -n "${ZSH_VERSION}" ]; then
  setup_echo >&2 'Error: the install instructions explicitly say to pipe the install script to `bash`; please follow them'
  exit 1
fi

setup_echo "Hello World!"

} # this ensures the entire script is downloaded #
