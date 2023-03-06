#!/usr/bin/env zsh

which -s terraform
if [[ $? != 0 ]] ; then
    echo "Installing terraform"

    brew tap hashicorp/tap
    brew install hashicorp/tap/terraform
 else
    echo "Terraform Found. skipping"
fi

