#!/usr/bin/env zsh

which -s docker
if [[ $? != 0 ]] ; then
    echo 'Installing docker'
    brew install docker
else
    echo 'Docker found. skipping'
fi