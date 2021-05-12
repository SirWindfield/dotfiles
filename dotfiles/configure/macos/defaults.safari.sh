#!/bin/sh

# Disable automatic file opening of "safe" files.
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Disable advanced search results.
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Enable backspace to go back in the search history.
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

# Enable the debug menu.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
# Enable the developer menu.
defaults write com.apple.Safari IncludeDevelopMenu -bool true
# Make new tags and windows to load the homepage.
defaults write com.apple.Safari NewTabBehavior -int 0
defaults write com.apple.Safari NewWindowBehavior -int 0

# Set homepage.
defaults write com.apple.Safari HomePage -string "https://startpage.zerotask.net"

# Make Safari’s search banners default to contains instead of starts With
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false
