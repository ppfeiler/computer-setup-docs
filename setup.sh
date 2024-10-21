#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #

setup_echo() {
  command printf %s\\n "$*" 2>/dev/null
}

if [ -z "${BASH_VERSION}" ] || [ -n "${ZSH_VERSION}" ]; then
  setup_echo >&2 'Error: the install instructions explicitly say to pipe the install script to `bash`; please follow them'
  exit 1
fi

main() {
  install_google_chrome
}

install_google_chrome() {
  if command -v google-chrome 2>&1 >/dev/null
  then
    setup_echo "google-chrome is already installed"
  else
    setup_echo "Download & Install google-chrome"

    curl -o /home/ppfeiler/Downloads/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

    sudo apt install ./home/ppfeiler/Downloads/google-chrome-stable_current_amd64.deb
  fi
}

main
} # this ensures the entire script is downloaded #
