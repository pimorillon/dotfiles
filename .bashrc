#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LANGUAGE=en_US
export HISTTIMEFORMAT='%F %T  '
export HISTSIZE=1000
export HISTFILESIZE=10000

if [ -z "$EDITOR" ]; then
    export EDITOR=vim
fi

export PS1="\[\e[0;32m\]\A|\u@\h:\[\e[0;33m\]\W \[\e[0;31m\]$\[\e[0;38m\] "

# Creates a directory and immediately enters it
mkcd ()
{
    mkdir -p -- "$1" && cd -P -- "$1"
}

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
