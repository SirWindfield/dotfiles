#!/bin/sh
#
# Installs the latest Android SDK alongside an emulator and the needed tools.

file="cmdline-tools.zip"
url=https://dl.google.com/android/repository/commandlinetools-mac-7302050_latest.zip
sha256=fda8189832e506a58643c119f02c515a5a85741ae9c040fab41ee6c5ac021311

curl --proto '=https' --tlsv1.2 -Sfo "$file" "$url"

# Create target directory, extract files and move them to the correct directory.
mkdir -p "$HOME/Library/Android/sdk"
unzip $file 'cmdline-tools/*' -d $ANDROID_SDK_ROOT
# mv $ANDROID_SDK_ROOT/tools/cmdline-tools/* $ANDROID_SDK_ROOT/tools
# rm -rf $ANDROID_SDK_ROOT/tools/cmdline-tools
rm -f $file
