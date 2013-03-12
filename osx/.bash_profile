# general
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export SVN_EDITOR=/usr/bin/vim

# aws
export JAVA_HOME="$(/usr/libexec/java_home)"
#export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
#export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
#export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.5.2.4/jars"

# bash
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'

# homebrew
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin/:/usr/local/Cellar/php54/5.4.9/bin:/usr/local/share/python:$PATH

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

# Dropbox bin
PATH="${PATH}:/Users/york/Dropbox/bin/ssh:/Users/york/Dropbox/bin"
export PATH
