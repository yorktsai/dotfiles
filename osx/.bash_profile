# general
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export SVN_EDITOR=/usr/bin/vim

# aws
#export JAVA_HOME="$(/usr/libexec/java_home)"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home
#export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
#export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
export AWS_ACCESS_KEY=
export AWS_SECRET_KEY=
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.6.5.2/jars"

# bash
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias python='python3'

# homebrew
export HOMEBREW_GITHUB_API_TOKEN=

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin/:/usr/local/Cellar/php54/5.5.6/bin:/usr/local/share/python3:$PATH

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
export PATH="${PATH}:/Users/york/Dropbox/bin/ssh:/Users/york/Dropbox/bin:/opt/elastic-mapreduce"
