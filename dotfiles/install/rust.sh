#!/bin/sh
#
# Installs rustup using the official method alongside the stable and nightly channel.
# @requires install-protonvpn.sh

# Installs rustup, stable toolchain and sets up the path inside of .profile
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

# Install nightly toolchain
rustup toolchain install nightly
