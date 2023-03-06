#!/usr/bin/env zsh

if [ -d ~/.oh-my-zsh ]; then
	echo "oh-my-zsh found. skipping"
 else
 	echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    echo 'Installing homebrew '
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo 'Homebrew found. skipping'
fi

which -s git
if [[ $? != 0 ]] ; then
    echo 'Installing git'
    brew install git
else
    echo 'Git found. skipping'
fi

which -s chezmoi
if [[ $? != 0 ]] ; then
    echo "Installing chezmoi"
    brew install chezmoi
else
    echo 'Chezmoi found. skipping'
fi