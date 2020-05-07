#!/bin/bash
shopt -s histappend
shopt -s cmdhist
PROMPT_COMMAND='history -a'
HISTSIZE=500000
HISTFILESIZE=100000
HISTCONTROL="erasedups:ignoreboth"
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history"
HISTTIMEFORMAT='%F %T '

shopt -s cdspell
shopt -s cdable_vars

export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:~/Library/Python/3.6/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

alias ls='ls -hG'
alias grep='grep --colour=always'
alias less='cless'
alias refresh='source ~/.bashrc'
alias gr='gradle'
alias gc='gr clean'
alias gcb='gc build'
alias gb='gr build'
alias gs='git st'
alias ga='git add .'

export HOSTNAME=$(hostname)

export JAVA_HOME=$(/usr/libexec/java_home)
export GROOVY_HOME=/usr/local/opt/groovy/libexec
M2_PREFIX=$(brew --prefix maven)
export M2_HOME=$M2_PREFIX/libexec
export M2=$M2_HOME/bin

eval "$(thefuck --alias)"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

PS1="\[\033]0;$TITLEPREFIX:${PWD//[^[:ascii:]]/?}\007\]\n\[\033[32m\]\u@\h \[\033[35m\]\d \t \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$"
