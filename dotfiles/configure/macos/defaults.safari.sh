#!/bin/sh

# Developer-specific configuration.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
# defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
# defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
# defaults write WebKitPreferences.developerExtrasEnabled -bool true
defaults write com.apple.Safari NewTabBehavior -int 0
defaults write com.apple.Safari NewWindowBehavior -int 0

# Set homepage.
defaults write com.apple.Safari HomePage -string "https://startpage.zerotask.net"

# Make Safari’s search banners default to contains instead of starts With
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false
