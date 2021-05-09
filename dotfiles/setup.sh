#!/bin/sh
set -e

# Directory of the `setup.sh` script.
dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

main() {
    # macOS scripts
    if [[ $(uname -s) == "Darwin" ]]; then
        "$dir/macos/install-protonvpn.sh"
        "$dir/macos/configure-protonvpn.sh"

        # Needed for all the other stuff.
        "$dir/macos/install-xcode-cli-tools.sh"
        
        # The unofficial package manager for macOS.
        "$dir/macos/install-homebrew.sh"
        "$dir/macos/install-packages-homebrew.sh"

        # Install Mac App Store programs.
        "$dir/macos/install-packages-mas.sh"

        # Install Android development dependencies.
        "$dir/macos/install-android-cli-tools.sh"
        source "$dir/macos/configure-android-cli-tools.sh"
        "$dir/macos/install-packages-android.sh"

        # Installs rust and favorite binaries from crates.
        "$dir/macos/install-rust.sh"
        "$dir/macos/install-packages-cargo.sh"

        # Configures system preferences and appearance.
        "$dir/macos/install-dockutil.sh"
        "$dir/macos/configure-macos.sh"
    fi
}

main
