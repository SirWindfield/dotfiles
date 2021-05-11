#!/bin/sh
#
# Sets various configuration values using macOS' `defaults` CLI.
#
# @requires install-dockutil.sh

# Set default theme to dark.
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# Expand save dialogs by default.
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Save to disk by default.
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

##############
# Screenshots
##############

# Disable shadows.
defaults write com.apple.screencapture disable-shadow -bool true

# Save screenshots as png.
defaults write com.apple.screencapture type -string "png"

#########
# Finder
#########

# Show hidden files by default.
defaults write com.apple.Finder AppleShowAllFiles -bool true

# Show status bar.
defaults write com.apple.finder ShowStatusBar -bool true

# Enable text selection inside of QuickLook.
defaults write com.apple.finder QLEnableTextSelection -bool true

# Search the current folder by default.
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing file extensions.
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Disable .DS_STORE files on network drives.
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Use list view by default.
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Delete trash items securely by default.
defaults write com.apple.finder EmptyTrashSecurely -bool true
