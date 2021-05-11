# Download the application.
filename="protonvpn.dmg"
version="1.9.3"

curl --proto '=https' --tlsv1.2 -sSfo "$file" "https://protonvpn.com/download/ProtonVPN_mac_v$version.dmg"

# Mount the dmg file, copy over the .app directory, detach the drive and delete the .dmg file.
VOLUME=$(hdiutil attach $filename | grep Volumes | awk '{print $3}')
cp -Rf "$VOLUME"/*.app "$HOME/Applications"
hdiutil detach "$VOLUME" > /dev/null
rm -f protonvpn.dmg
