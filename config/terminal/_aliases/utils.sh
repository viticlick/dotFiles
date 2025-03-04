#!/bin/sh
alias k='kill -9'
alias brwe='brew'

alias ta='tig --all'
alias tmux="tmux -f $HOME/.dotfiles/config/tmux.conf"
alias ec="find ~/.dotfiles/config -type f | fzf | xargs $EDITOR"
alias ef="find . | fzf | xargs cursor"
alias rf="find . | fzf | xargs rm"

alias youtube-mp3="youtube-dl --extract-audio --audio-format mp3"

alias raisl="rails"
alias cc="cucumber"
alias rs="bundle exec rspec"

alias tmuxls="tmux list-sessions"
alias tmuxa="tmux attach -t "

alias reload="source $HOME/.bashrc"
