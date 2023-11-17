# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# zsh plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh plugins end

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# alias
alias ls='eza'
alias rm='rm -I'
alias grep='rg --color=auto'
alias pacman='sudo pacman'
# alias end

# env
export EDITOR=/usr/bin/vim
# env end

# starship
export STARSHIP_CONFIG=~/.config/starship.toml  # to be explicit
eval "$(starship init zsh)"
# starship end

. "$HOME/.cargo/env"
export PATH=~/bin:$PATH

# dotfiles
alias config='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
# dotfiles end

