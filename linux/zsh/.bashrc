#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# [[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1

alias ports='sudo lsof -i -P -n | grep LISTEN'
alias vinit='python3.8 -m venv venv'
alias py='python3'
alias kil='tmux kill-ses -t'
alias new='tmux new -s'
alias db='psql fate fate'
