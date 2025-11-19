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

# Fix numberpad key binds
# Translate numpad keys to their twin counterparts.
() {
  local keymap
  for keymap in emacs viins vicmd; do
    bindkey -M $keymap -s '^[OM' '^M'  # enter
    bindkey -M $keymap -s '^[Ok' '+'
    bindkey -M $keymap -s '^[Om' '-'
    bindkey -M $keymap -s '^[Oj' '*'
    bindkey -M $keymap -s '^[Oo' '/'
    bindkey -M $keymap -s '^[OX' '='
  done
}
