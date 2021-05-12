#!/bin/sh
#
# Installs crates provided through crates.io.
#
# @requires-env-optional: CARGO_TARGET_DIR: The directory where temporary files are stored.

# Cargo subcommands.
cargo install \
    cargo-audit \
    cargo-expand \
    cargo-edit \
    cargo-free \
    cargo-geiger \
    cargo-make \
    cargo-next \
    cargo-update \
    cargo-watch

# Other CLIs.
cargo install \
    diesel_cli --no-default-features --features "postgres,sqlite"
