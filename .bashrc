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

# Source the .git-completion.bash file if it exists
if [ -e "${HOME}/.git-completion.bash" ]; then
  source "${HOME}/.git-completion.bash"
  GIT_PS1_SHOWDIRTYSTATE=TRUE
  GIT_PS1_SHOWSTASHSTATE=TRUE
  GIT_PS1_SHOWUNTRACKEDSILES=TRUE
  GIT_PS1_SHOWUPSTREAM="auto"
  PS1="\[\033[0;32m\]\u\[\033[35m\]@\h:\[\033[33m\]\w\[\033[1;33m\]\$(__git_ps1 '(%s)')\[\033[0m\]\n$ "
fi

export JAVA_HOME=`/usr/libexec/java_home`
M2_PREFIX=`brew --prefix maven`
export M2_HOME=$M2_PREFIX/libexec
export M2=$M2_HOME/bin

eval "$(thefuck --alias)"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export CLASSPATH=".:/usr/local/lib/antlr-4.6-complete.jar:$CLASSPATH"

alias antlr4='java -jar /usr/local/lib/antlr-4.6-complete.jar'
alias grun='java org.antlr.v4.gui.TestRig'

