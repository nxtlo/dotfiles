# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias ports='sudo lsof -i -P -n | grep LISTEN'
alias vinit='python3.8 -m venv venv'
alias upgrade='sudo yum upgrade'
alias update='sudo yum update'
alias install='sudo yum install'
alias py='python3.8'
alias am='tmux a -t amaya'
alias kil='tmux kill-ses -t'
alias new='tmux new -s'
alias db='psql fate fate'