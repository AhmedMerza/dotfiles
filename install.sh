#!/bin/bash

set -e

echo "Installing dotfiles..."

# Detect OS
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected macOS"

    # Install Homebrew if not present
    if ! command -v brew &> /dev/null; then
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    echo "Installing packages..."
    brew install stow zsh neovim tmux starship lazygit gh

elif [[ -f /etc/debian_version ]]; then
    echo "Detected Debian/Ubuntu"
    sudo apt update
    sudo apt install -y stow zsh neovim tmux

    # Install starship
    curl -sS https://starship.rs/install.sh | sh

    echo "Install lazygit manually: https://github.com/jesseduffield/lazygit#installation"

elif [[ -f /etc/fedora-release ]]; then
    echo "Detected Fedora"
    sudo dnf install -y stow zsh neovim tmux

    # Install starship
    curl -sS https://starship.rs/install.sh | sh

    # Install lazygit
    sudo dnf copr enable atim/lazygit -y
    sudo dnf install -y lazygit
fi

# Install TPM for tmux
if [[ ! -d ~/.tmux/plugins/tpm ]]; then
    echo "Installing Tmux Plugin Manager..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# Stow all configs
echo "Stowing configurations..."
cd "$(dirname "$0")"
stow -v nvim ghostty tmux zsh git

# Set zsh as default shell
if [[ "$SHELL" != *"zsh"* ]]; then
    echo "Setting zsh as default shell..."
    chsh -s "$(which zsh)"
fi

echo ""
echo "Done! Restart your terminal and run 'prefix + I' in tmux to install plugins."
