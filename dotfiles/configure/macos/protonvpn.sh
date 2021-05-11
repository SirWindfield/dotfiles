#!/bin/sh
#
# Starts the ProtonVPN desktop app to allow the user to login and configure it.
# The script waits for the user to press the enter key once finished.
#
# @requires install-protonvpn.sh

open "$HOME/Applications/ProtonVPN.app"
while true; do
    read -n1 -s -r -p $'Configure ProtonVPN and press enter when done.\n' key
    if [ "$key" = '' ]; then
        break
    fi
done
