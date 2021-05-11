#!/bin/sh
#
# Installs packages using homebrew.
# @requires install-homebrew.sh

# CLI tools
brew bundle --file=- <<-EOS
tap "adoptopenjdk/openjdk"
tap "sirwindfield/tap"

# Core
brew "diff-so-fancy"
brew "dust"
brew "exa"
brew "fish"
brew "fzf"
brew "gh"
brew "git"
brew "jq"
brew "postgresql"
brew "mas"
brew "neovim"
brew "ripgrep"
brew "wget"
brew "yadm"
brew "yarn"

# SirWindfield
brew "gh-labels-cli"
brew "git-cm"
brew "git-work"
brew "rhack"
EOS

# Casks
brew install --cask \
    adoptopenjdk8 \
    android-studio \
    appcode \
    clion \
    datagrip \
    docker \
    firefox \
    flutter \
    intellij-idea \
    jetbrains-toolbox \
    provisionql \
    qlcolorcode \
    qlimagesize \
    qlmarkdown \
    qlprettypatch \
    qlstephen \
    qlvideo \
    quicklook-csv \
    quicklook-json \
    quicklookase \
    responsively \
    suspicious-package \
    visual-studio-code \
    webpquicklook \
    webstorm
