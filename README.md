# Dotfiles

Personal dotfiles for an optimized development environment, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## What's Included

- **Zsh** - Shell config with Starship prompt and plugins
- **Neovim** - AstroNvim-based configuration
- **Tmux** - Terminal multiplexer with session management
- **Ghostty** - Terminal emulator config
- **Git** - Global git config and ignore patterns

## Quick Install

```bash
git clone https://github.com/AhmedMerza/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

The install script will:
- Install required packages (stow, zsh, neovim, tmux, starship, lazygit)
- Install Tmux Plugin Manager
- Stow all configurations
- Set zsh as default shell

## Manual Installation

### 1. Install prerequisites

```bash
# macOS (Homebrew)
brew install stow zsh neovim tmux starship lazygit gh

# Ubuntu/Debian
sudo apt install stow zsh neovim tmux
curl -sS https://starship.rs/install.sh | sh

# Fedora
sudo dnf install stow zsh neovim tmux
curl -sS https://starship.rs/install.sh | sh
```

### 2. Clone and stow

```bash
git clone https://github.com/AhmedMerza/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Stow all configs
stow nvim ghostty tmux zsh git

# Or stow individually
stow nvim
stow zsh
```

### 3. Post-install

```bash
# Install TPM for tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Set zsh as default
chsh -s $(which zsh)
```

In tmux, press `prefix + I` to install plugins.

## Structure

```
dotfiles/
├── install.sh              # Automated setup script
├── scripts/
│   └── update-plugins.sh   # Update zsh plugins
├── nvim/
│   └── .config/nvim/       # Neovim config (AstroNvim)
├── ghostty/
│   └── .config/ghostty/    # Ghostty terminal config
├── tmux/
│   └── .config/tmux/       # Tmux config
├── git/
│   ├── .gitconfig          # Git configuration
│   └── .config/git/ignore  # Global gitignore
└── zsh/
    ├── .zshrc              # Zsh config
    ├── .config/starship.toml
    └── plugins/            # Zsh plugins
        ├── zsh-autosuggestions
        ├── zsh-completions
        └── zsh-syntax-highlighting
```

## Updating Zsh Plugins

Plugins are vendored directly (not submodules). To update them:

```bash
./scripts/update-plugins.sh
```

## Key Features

### Zsh
- **Starship prompt** - Fast, minimal, shows git status, language versions
- **History** - 10k entries, deduplication, shared across sessions
- **Autosuggestions** - History-based command suggestions
- **Syntax highlighting** - Commands highlighted as you type
- **Aliases** - `gs`, `ga`, `gc`, `gp` (git), `pa` (php artisan), `v` (nvim)

### Git
- Default branch: `main`
- Pull with rebase by default
- Auto setup remote on push
- Useful aliases: `git lg`, `git st`, `git co`
- Global ignore: `.DS_Store`, `.env`, `node_modules/`, etc.

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

## Customization

**Git**: Edit `git/.gitconfig` to set your name/email:
```bash
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
```

**Starship**: Edit `zsh/.config/starship.toml` to customize the prompt.

## License

MIT
