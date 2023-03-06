#!/usr/bin/env zsh

sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# check if brew is installed
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    echo 'Installing homebrew'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo 'Homebrew found. skipping'
fi

brew update && brew install azure-cli