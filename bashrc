# File to source in bashrc

GIT_PS1_SHOWDIRTYSTATE=1
PS1='\[\033[31m\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;33m\]$(__git_ps1 "(%s)")\[\033[00m\]\n\$ '

BASHRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export FAIRYFLY_SHARE=$BASHRC_DIR/share
export PATH="$PATH:$BASHRC_DIR/bin"

#Multiple terminal history
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
