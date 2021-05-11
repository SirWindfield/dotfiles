#!/bin/sh
#
# Installs the preferred VPN program. Default client is ProtonVPN.

dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
vpn_client=${1:-ProtonVPN}

setup_protonvpn() {
    if [[ $(uname -s) == "Darwin" ]]; then
        "$dir/macos/protonvpn.sh"
    fi
}

if [[ $vpn_client == "ProtonVPN" ]]; then
    setup_protonvpn
fi
