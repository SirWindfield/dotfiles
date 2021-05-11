#!/bin/sh
set -e

# Directory of the `setup.sh` script.
dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

main() {
    # macOS scripts
    if [[ $(uname -s) == "Darwin" ]]; then
        "$dir/install/vpn.sh"
        "$dir/configure/vpn.sh"
        
        # The unofficial package manager for macOS.
        "$dir/install/macos/homebrew.sh"
        "$dir/packages/homebrew.sh"

        # Set all needed environment variables.
        source "$dir/vars/macos"

        # Install Mac App Store programs.
        # TODO: prompt for apple id login (setup or enter).
        "$dir/install/macos/mas-apps.sh"

        # Install Android development dependencies.
        "$dir/install/android-cli-tools.sh"

        # Installs rust and favorite binaries from crates.
        "$dir/install/rust.sh"
    fi

    # Load the base variables at last to allow for platform-specific values to 
    # be created beforehand.
    source "$dir/vars/base"
}

main