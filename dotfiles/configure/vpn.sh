#!/bin/sh

dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
vpn_client=${1:-ProtonVPN}

configure_protonvpn() {
    if [[ $(uname -s) == "Darwin" ]]; then
        "$dir/macos/protonvpn.sh"
    fi
}

if [[ $vpn_client == "ProtonVPN" ]]; then
    configure_protonvpn
fi

