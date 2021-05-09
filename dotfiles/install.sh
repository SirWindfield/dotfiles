#!/bin/sh
#
# Downloads yadm and clones the dotfiles repository. This is the entry point when setting up a new system.
#
# curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/SirWindfield/dotfiles/main/install.sh | sh

echo "🛠️  Installing yadm"
curl --proto '=https' --tlsv1.2 --silent -fLo "$HOME/yadm" https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x "$HOME/yadm"
echo "⬇️  Cloning SirWindfield/dotfiles repository"
"$HOME/yadm" clone https://github.com/SirWindfield/dotfiles.git
rm -f "$HOME/yadm"
