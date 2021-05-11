#!/bin/sh
#
# Installs homebrew, a package manager for macOS.
# @requires install-xcode-cli-tools.sh

# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
if [[ $(brew --version) ]] ; then
    echo "Attempting to update Homebrew from version $(brew --version)"
    brew update
else
    echo "Installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
