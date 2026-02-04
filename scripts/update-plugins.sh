#!/bin/bash

set -e

PLUGINS_DIR="$HOME/dotfiles/zsh/plugins"

echo "Updating zsh plugins..."

update_plugin() {
    local name=$1
    local repo=$2
    local dir="$PLUGINS_DIR/$name"

    echo "Updating $name..."

    if [[ -d "$dir" ]]; then
        rm -rf "$dir"
    fi

    git clone --depth 1 "$repo" "$dir"
    rm -rf "$dir/.git"

    echo "$name updated."
}

update_plugin "zsh-autosuggestions" "https://github.com/zsh-users/zsh-autosuggestions.git"
update_plugin "zsh-syntax-highlighting" "https://github.com/zsh-users/zsh-syntax-highlighting.git"
update_plugin "zsh-completions" "https://github.com/zsh-users/zsh-completions.git"

echo ""
echo "All plugins updated! Restart your shell to apply changes."
