# Dotfiles

Personal dotfiles for an optimized development environment, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## What's Included

- **Zsh** - Shell config with Starship prompt and plugins
- **Neovim** - AstroNvim-based configuration
- **Tmux** - Terminal multiplexer with session management
- **Ghostty** - Terminal emulator config

## Prerequisites

Install the following tools:

```bash
# macOS (Homebrew)
brew install stow zsh neovim tmux starship lazygit

# Ubuntu/Debian
sudo apt install stow zsh neovim tmux
# Install starship separately: https://starship.rs

# Fedora
sudo dnf install stow zsh neovim tmux
```

## Installation

### 1. Clone the repository

```bash
git clone https://github.com/YourGitHubUsername/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Stow the configs

Use GNU Stow to symlink configs to your home directory:

```bash
# Stow all configs
stow nvim ghostty tmux zsh

# Or stow individually
stow nvim
stow zsh
```

This creates symlinks like `~/.config/nvim` → `~/dotfiles/nvim/.config/nvim`

### 3. Install Tmux plugins

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Then in tmux, press `prefix + I` to install plugins.

### 4. Set Zsh as default shell

```bash
chsh -s $(which zsh)
```

Restart your terminal for changes to take effect.

## Structure

```
dotfiles/
├── nvim/
│   └── .config/nvim/       # Neovim config (AstroNvim)
├── ghostty/
│   └── .config/ghostty/    # Ghostty terminal config
├── tmux/
│   └── .config/tmux/       # Tmux config
└── zsh/
    ├── .zshrc              # Zsh config
    ├── .config/starship.toml
    └── plugins/            # Zsh plugins
        ├── zsh-autosuggestions
        ├── zsh-completions
        └── zsh-syntax-highlighting
```

## Key Features

### Zsh
- **Starship prompt** - Fast, minimal, customizable
- **Autosuggestions** - History-based command suggestions
- **Syntax highlighting** - Commands highlighted as you type
- **Custom aliases** - `gs` (git status), `pa` (php artisan), etc.

### Tmux
- **Prefix**: `C-Space`
- **Mouse support** enabled
- **Session persistence** with tmux-resurrect and tmux-continuum
- **Pane resizing**: `Alt + h/j/k/l`

### Neovim
- **AstroNvim** base configuration
- **Copilot** integration
- **LSP** support for multiple languages
- **Treesitter** syntax highlighting

## License

MIT
