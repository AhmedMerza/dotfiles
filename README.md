# Dotfiles

This repository contains my personal dotfiles for an optimized development environment, including configurations for **Zsh**, **Tmux**, and **Neovim**. It is tailored to work with my preferred tools and settings, providing a seamless experience across various development tasks.

## Prerequisites

Make sure you have the following tools installed on your system before using these dotfiles:

- **Zsh**: The default shell (configured with Powerlevel10k, Oh My Zsh, and other plugins).
- **Tmux**: A terminal multiplexer for managing multiple terminal windows.
- **Neovim**: A modern text editor that is part of my development workflow.
- **Tmux Plugin Manager (TPM)**: Used to manage tmux plugins.
- **Powerlevel10k**: A Zsh theme for a fast and highly customizable prompt.
- **Zsh Plugins**: `zsh-autosuggestions`, `zsh-syntax-highlighting`, and others for enhanced user experience.
- **Lazygit: A simple terminal UI for git commands.**

## Setup

### 1. Clone this repository

To get started, clone this repository into your home directory:

```bash
git clone https://github.com/YourGitHubUsername/YourRepoName.git ~/.cfg
cd ~
```

### 2. Install necessary tools

Install Zsh:
If you don't have Zsh installed, use the following command:

```bash
# On Ubuntu/Debian
sudo apt update && sudo apt install zsh

# On Fedora
sudo dnf install zsh

# On macOS (with Homebrew)
brew install zsh
```

Install Tmux:
If Tmux isn't installed, install it using:

```bash
# On Ubuntu/Debian
sudo apt update && sudo apt install zsh

# On Fedora
sudo dnf install zsh

# On macOS (with Homebrew)
brew install zsh
```

Install Neovim:
If Neovim isn't installed, use:

```bash
# On Ubuntu/Debian
sudo apt install neovim

# On Fedora
sudo dnf install neovim

# On macOS (with Homebrew)
brew install neovim
```

Install Lazygit: To install Lazygit, follow the instructions for your system:

```bash
# On Fedora/RHEL
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit

# On macOS (with MacPorts)
sudo port install lazygit
```

Create Symlinks

```bash
# Create symlinks for the .zshrc, .p10k.zsh, and other necessary files
ln -s ~/.cfg/.zshrc ~/.zshrc
ln -s ~/.cfg/.p10k.zsh ~/.p10k.zsh
ln -s ~/.cfg/.config/nvim ~/.config/nvim
ln -s ~/.cfg/.config/tmux ~/.config/tmux
```

Install Dependencies for Zsh:
After setting up the .zshrc file, install Zsh plugins (e.g., zsh-autosuggestions, zsh-syntax-highlighting) by running:

```bash
# Install Oh My Zsh if not already installed
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Zsh plugins (e.g., zsh-autosuggestions, zsh-syntax-highlighting)
source ~/.zshrc
```

Install TPM for Tmux:
To install Tmux Plugin Manager (TPM), run:

```bash
# Clone TPM into the correct directory
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

After this, install Tmux plugins by starting a Tmux session and pressing the prefix + I to install them.

```bash
# In your tmux session, press C-Space + I to install plugins
```

Neovim Plugins: Install plugins for Neovim using your Lazy.

```bash
# In Neovim, run :LazySync to install all plugins
```

### 3. Switch from Bash to Zsh

Now that the plugins and configurations are set up, switch to Zsh as your default shell:

```bash
# Change the default shell to Zsh
chsh -s $(which zsh)
```

Note: If you’re using a system that requires sudo for user modifications, you may need to prepend sudo to the command above. Additionally, make sure you have Zsh installed on your system before changing the default shell.

Once the shell is changed, restart your terminal for Zsh to take effect.

### 4. Customize your environment

#### Zsh: Your Zsh prompt will use Powerlevel10k by default. You can customize it by running:

```bash
p10k configure
```

Tmux: Tmux is set up to use plugins such as tmux-resurrect, tmux-continuum, and others for an enhanced session management experience.

Neovim: The configuration is designed for modern development workflows, particularly for PHP (Laravel) and general programming tasks.

## Key Features

### Zsh Configuration

- Powerlevel10k Theme: Fast and beautiful prompt for Zsh with automatic time-stamping, git status display, and more.
- Autosuggestions: Command auto-suggestions based on your history.
- Syntax Highlighting: Highlights commands as you type for improved readability.
- Custom Aliases: Shortcuts for common tasks (e.g., gs for git status, pa for php artisan).

### Tmux Configuration

- Prefix Key: Changed to C-Space for better compatibility.
- Mouse Support: Enabled for easier pane resizing and navigation.
- Session Management: Uses tmux-resurrect and tmux-continuum for session persistence.
- Pane Resizing: Customize pane sizes using Alt + h/j/k/l.
- Window Management: Split windows and new windows open in the current working directory.

### Neovim Configuration

- AstroNvim Setup: An opinionated Neovim setup with a focus on modern development.
- PHP Development: Integrated with Laravel development workflow.
- Syntax Highlighting and Auto-completion: Leveraging Neovim's capabilities for a productive experience.
- True Color Support: Neovim supports 24-bit color for a better UI.

## License

Feel free to use and modify these dotfiles for your own setup. This repository is licensed under the MIT License.
