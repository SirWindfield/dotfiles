#!/bin/sh
#
# This script downloads all dotfiles and installs everything. Run it with the following command:

echo ":: Installing yadm"
curl --proto '=https' --tlsv1.2 --silent -fLo "$HOME/yadm" https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x "$HOME/yadm"
echo ":: Cloning and bootstrapping SirWindfield/dotfiles repository"
"$HOME/yadm" clone https://github.com/SirWindfield/dotfiles.git
rm -f "$HOME/yadm"
echo ":: Done"
