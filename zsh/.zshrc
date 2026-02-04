# Path to plugins inside dotfiles
ZSH_PLUGINS="$HOME/dotfiles/zsh/plugins"

# Starship prompt
eval "$(starship init zsh)"

# Load optional plugins
source $ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath+=$ZSH_PLUGINS/zsh-completions
autoload -Uz compinit && compinit

# ---- Language & PATH ----
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

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

# Laravel
alias pa='php artisan'

# Composer
alias c='composer'
alias cda='composer dump-autoload'
alias ci='composer install'
alias cu='composer update'

# Dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Python
alias python='python3'
export PATH="$HOME/.local/bin:$PATH"
