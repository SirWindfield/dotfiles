#!/bin/sh
set -e

# Directory of the `setup.sh` script.
dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

main() {
    # macOS scripts
    if [[ $(uname -s) == "Darwin" ]]; then
        sudo -v
        # Keep-alive: update existing `sudo` time stamp until `.osx` has finished
        while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

        "$dir/install/vpn.sh"
        "$dir/configure/vpn.sh"
        
        # The unofficial package manager for macOS.
        "$dir/install/macos/homebrew.sh"
        "$dir/packages/homebrew.sh"

        # Set all needed environment variables.
        source "$dir/vars/macos"

        # Install Mac App Store programs.
        # TODO: prompt for apple id login (setup or enter).
        # "$dir/install/macos/mas-apps.sh"

        # Install Android development dependencies.
        "$dir/install/android-cli-tools.sh"
        "$dir/packages/android.sh"

        # Installs rust and favorite binaries from crates.
        "$dir/install/rust.sh"
        "$dir/packages/cargo.sh"

        # Installs npm packages.
        "$dir/configure/npm.sh"
        "$dir/packages/npm.sh"

        # Configure macOS.
        find "$dir/configure/macos" -type f -name 'defaults.*' -exec {} \;

        # Kill all affected programs.
        for app in "Activity Monitor" "cfprefsd" "Dock" "Finder" "Safari" "SystemUIServer";
 	    do
 	        killall "${app}" > /dev/null 2>&1
        done
    fi

    # Load the base variables at last to allow for platform-specific values to 
    # be created beforehand.
    source "$dir/vars/base"
}

main
