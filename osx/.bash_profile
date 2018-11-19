# general
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# java
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

# alias 
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias ls='ls --color'

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
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/opt/scala@2.11/bin:$PATH"
PATH="/usr/local/opt/thrift@0.9/bin:$PATH"
PATH="~/Dropbox/bin:$PATH"
PATH="~/workspace/rdc-ml-env-setup/script:$PATH"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

# homebrew
if [ -r ~/.private ]
then
    source ~/.private
fi

# Enable AWS CLI autocompletion
complete -C aws_completer aws

# gcloud
export GOOGLE_APPLICATION_CREDENTIALS=TODO
