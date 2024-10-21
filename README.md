# Setup script for setting up new computers

## About

This is my selfwritten script for setting up new computers.

The goal is to simply execute this script, answer a few questions and then verything needed will be installed/configured.

## Setup a new computer

Before you run the setup script, make sure that your system is up-to-date:
```sh
sudo apt update
sudo apt upgrade
```

To setup a new computer, you should run the [install script][1]. To do that, you may either download and run the script manually, or use the following cURL or Wget command:
```sh
curl -o- https://raw.githubusercontent.com/ppfeiler/setup/refs/heads/main/setup.sh | bash
```
```sh
wget -qO- https://raw.githubusercontent.com/ppfeiler/setup/refs/heads/main/setup.sh | bash
```

Running either of the above commands downloads a script and runs it. The script clones the nvm repository to `~/.nvm`, and attempts to add the source lines from the snippet below to the correct profile file (`~/.bash_profile`, `~/.zshrc`, `~/.profile`, or `~/.bashrc`).

# What will be installed?

- [google-chrome][2]
- [Yakuake][3]

[1]: https://github.com/ppfeiler/setup/blob/main/setup.sh
[2]: https://www.google.com/chrome/
[3]: https://apps.kde.org/de/yakuake/
