#!/bin/sh

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
    diesel --no-default-features --features "postgres,sqlite"
