#!/usr/bin/env bash
set -euo pipefail

if [ "$SHELL" != "/bin/zsh" ]; then
    echo "Changing default shell to zsh."
    chsh -s /bin/zsh
fi

if [ ! -d "${HOME}/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "oh-my-zsh is already installed."
fi
