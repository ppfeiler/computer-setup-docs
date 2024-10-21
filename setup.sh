#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #

readonly DOWNLOADS_DIR="$HOME/Downloads"

setup_echo() {
  command printf %s\\n "$*" 2>/dev/null
}

if [ -z "${BASH_VERSION}" ] || [ -n "${ZSH_VERSION}" ]; then
  setup_echo >&2 'Error: the install instructions explicitly say to pipe the install script to `bash`; please follow them'
  exit 1
fi

main() {
  install_google_chrome
  install_apts
  install_snaps
}

install_google_chrome() {
  if command -v google-chrome 2>&1 >/dev/null
  then
    setup_echo "google-chrome is already installed"
  else
    setup_echo "Download & Install google-chrome"

    curl -o "$DOWNLOADS_DIR"/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

    sudo apt install "$DOWNLOADS_DIR"/google-chrome-stable_current_amd64.deb
  fi
}

install_apts() {
  setup_echo "Install yakuake"
  sudo apt install -y "yakuake"
}

install_snaps() {
  sudo snap install outlook-for-linux --edge
  sudo snap install teams-for-linux
}

main
} # this ensures the entire script is downloaded #
