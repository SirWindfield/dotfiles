#!/bin/sh
#
# Installs all required packages for working on Android apps.
#
# @requires-env ANDROID_SDK_ROOT: The path to the Android SDK location.

# Update local index and accept all licenses.
sdkmanager --sdk_root=$ANDROID_SDK_ROOT --update
yes | sdkmanager --sdk_root=$ANDROID_SDK_ROOT --licenses

sdkmanager --sdk_root=$ANDROID_SDK_ROOT \
    "build-tools;30.0.3" \
    "extras;google;instantapps" \
    "platform-tools" \
    "platforms;android-30" \
    "sources;android-30" \
    "system-images;android-30;google_apis;x86"
