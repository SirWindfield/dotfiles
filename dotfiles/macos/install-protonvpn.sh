#!/bin/sh
#
# Downloads the ProtonVPN desktop app and prompts the user to establish a connection.

# Download the application.
curl --proto '=https' --tlsv1.2 -sSfo "protonvpn.dmg" "https://protonvpn.com/download/ProtonVPN_mac_v1.9.3.dmg"

# Mount the dmg file, copy over the .app directory, detach the drive and delete the dmg file.
VOLUME=$(hdiutil attach protonvpn.dmg | grep Volumes | awk '{print $3}')
cp -Rf "$VOLUME"/*.app "$HOME/Applications"
hdiutil detach "$VOLUME" > /dev/null
rm -f protonvpn.dmg
