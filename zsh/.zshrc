# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
# zinit light zdharma-continuum/fast-syntax-highlighting
# zinit light zsh-users/zsh-completions
# zinit light zsh-users/zsh-autosuggestions
zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions

zinit light Aloxaf/fzf-tab
zinit light MichaelAquilina/zsh-you-should-use
zinit light hlissner/zsh-autopair

# Add in snippets
zinit snippet OMZP::node
zinit snippet OMZP::npm
zinit snippet OMZP::python
zinit snippet OMZP::uv
zinit snippet OMZP::docker
zinit snippet OMZP::docker-compose
zinit snippet OMZP::kubectl
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::postgres

zinit snippet OMZP::command-not-found
zinit snippet OMZP::safe-paste
zinit snippet OMZP::z
zinit snippet OMZP::extract
zinit snippet OMZP::web-search

# Load completions
autoload -Uz compinit && compinit
zinit cdreplay -q

# Keybindings
# bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

# Change terminal cursor behaviour
echo -ne '\e[5 q'

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HIST_STAMPS="mm/dd/yyyy"
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

export GPG_TTY=$(tty)
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/snap/bin"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.local/share/pnpm-global/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"


export MANPAGER="nvim +Man!"

# Autojump configuration
# [[ -s /usr/share/autojump/autojump.sh ]] && . /usr/share/autojump/autojump.sh


# Aliases
alias dir='eza --icons --group-directories-first'
alias ls='eza --icons --group-directories-first -a'
alias vi='nvim'
alias vim='nvim'
alias c='clear'
alias lg="lazygit"
alias lsd="ls -D"
alias tree="wisu"
alias npm="pnpm" 
alias pip="uv pip"

# Windows Aliases
alias zed="/mnt/d/Zed/bin/Zed.exe"

#
# [[ -f ~/.inshellisense/zsh/init.zsh ]] && source ~/.inshellisense/zsh/init.zsh

# pnpm
export PNPM_HOME="/home/vikiru/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# Add mise installs to path
eval "$(mise activate zsh)"
export PATH="$HOME/.local/share/mise/installs:$PATH"

eval "$(starship init zsh)"

