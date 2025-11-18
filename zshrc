#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Lines configured by zsh-newuser-install    
HISTFILE=~/.histfile                         
HISTSIZE=1000                                
SAVEHIST=1000                                
bindkey -v                                   

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Disable ssh hosts file
zstyle ':completion:*:ssh:*' hosts off

# Speed up ssh host completion
zstyle ':completion:*:(ssh|scp|rsync):*' tag-order '!hosts:-host:host !hosts:-domain:domain !hosts:-ipaddr:ip\ address *'
