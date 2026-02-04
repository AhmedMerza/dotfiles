# Path to plugins inside dotfiles
ZSH_PLUGINS="$HOME/dotfiles/zsh/plugins"

# Starship prompt
eval "$(starship init zsh)"

# Load optional plugins
source $ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath+=$ZSH_PLUGINS/zsh-completions
autoload -Uz compinit && compinit

# ---- History ----
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS      # Don't record duplicates
setopt HIST_IGNORE_ALL_DUPS  # Remove older duplicate entries
setopt HIST_FIND_NO_DUPS     # Don't show duplicates when searching
setopt HIST_SAVE_NO_DUPS     # Don't write duplicates to file
setopt SHARE_HISTORY         # Share history between sessions
setopt APPEND_HISTORY        # Append instead of overwrite

# ---- Language & PATH ----
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Editor
export EDITOR='nvim'
export VISUAL='nvim'

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Local bin
export PATH="$HOME/.local/bin:$PATH"

# ---- Terminal setup ----
if [[ -n "$TMUX" ]]; then
  export TERM=tmux-256color
else
  export TERM=xterm-256color
fi

# ---- Aliases ----
# Git
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate --all'
alias gco='git checkout'
alias gb='git branch'
alias gd='git diff'

# Laravel
alias pa='php artisan'

# Composer
alias c='composer'
alias cda='composer dump-autoload'
alias ci='composer install'
alias cu='composer update'

# Neovim
alias v='nvim'
alias vim='nvim'

# Python
alias python='python3'
alias pip='pip3'

# General
alias ll='ls -la'
alias la='ls -A'
alias ..='cd ..'
alias ...='cd ../..'
export PATH="/Users/ahmedmerza/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/Users/ahmedmerza/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

# ---- Auto-start tmux ----
if command -v tmux &> /dev/null && [ -z "$TMUX" ] && [[ $- == *i* ]]; then
  tmux new-session -A -s main
fi
