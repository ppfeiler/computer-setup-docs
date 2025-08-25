# My Guide to Setting Up a New Computer

<img src="assets/logo.webp" alt="Repository Logo" width="300" />

This repository documents the steps I take when setting up a new computer.

My goal is to record every step and installation process to ensure I can consistently recreate the same environment whenever I set up a new machine.

This guide assumes the use of an Ubuntu-based distribution with KDE as the desktop environment.

## Commands
```bash
# apts
sudo apt install \
    libfuse2 \
    yakuake \
    git \
    net-tools

# local debs
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb
wget https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb

sudo apt install \
    ./google-chrome-stable_current_amd64.deb \
    ./onlyoffice-desktopeditors_amd64.deb \
    ./1password-latest.deb

# snaps
sudo snap install \
    outlook-for-linux --edge

sudo snap install notion-desktop
    
# flatpaks
flatpak install flathub \
    com.github.IsmaelMartinez.teams_for_linux \
    com.spotify.Client \
    com.slack.Slack

# Jetbrains Toolbox
curl -fsSL https://raw.githubusercontent.com/nagygergo/jetbrains-toolbox-install/master/jetbrains-toolbox.sh | bash

# Sdkman
curl -s "https://get.sdkman.io" | bash

# uv
curl -LsSf https://astral.sh/uv/install.sh | sh
```

## Manual Installation

- [Node Version Manager](https://github.com/nvm-sh/nvm/blob/master/README.md)

## After the installation

- Autostart yakuake
  - Set Keyboard Shortcut to `STRG + ALT + T`
- Install Intellij Idea with the toolbox app
- [Choose an wallpaper](https://penger.city/wallpapers/)
- Connect 1Password and aktivate the .ssh agent

## Todo

- find an automatic way for nvm
- get rid of snap
- maybe provide a repository for my favorite wallpapers?
- add dotfiles
