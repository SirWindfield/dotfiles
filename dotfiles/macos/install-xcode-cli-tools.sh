#!/bin/sh
#
# Installs the XCode command line tools.
# @requires configure-protonvpn.sh

if [[ $(xcode-select --version) ]]; then
  echo "Xcode command tools already installed"
else
  echo "Installing Xcode commandline tools"
  $(xcode-select --install)
fi
