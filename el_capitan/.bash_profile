# general
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# alias 
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'

# show git branch in PS1
function git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
    echo " ("${ref#refs/heads/}")";
}

# redefine PS1
PS1='\h:\W \u\[\033[1;36m\]$(git_branch)\[\033[00m\]\$ '

# bash_completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# PATH
PATH=/usr/local/bin:$PATH
