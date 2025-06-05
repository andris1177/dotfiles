#
# ~/.bashrc
#

blk='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'   # Red
grn='\[\033[01;32m\]'   # Green
ylw='\[\033[01;33m\]'   # Yellow
blu='\[\033[01;34m\]'   # Blue
pur='\[\033[01;35m\]'   # Purple
cyn='\[\033[01;36m\]'   # Cyan
wht='\[\033[01;37m\]'   # White
clr='\[\033[00m\]'      # Reset

# history
# add history date
HISTTIMEFORMAT="%F %T "
# set bash history size 
HISTSIZE=20000
HISTFILESIZE=20000
# append the history insted of overwriting it
shopt -s histappend

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


function git_branch() {
    if [ -d .git ] ; then
        printf "%s" "[$(git branch 2> /dev/null | awk '/\*/{print $2}')]";
    fi
}

PS1=${pur}'$(git_branch)'${blu}'[\u] '${cyn}'\w '${grn}'$ '${clr}


cd() {
  builtin cd "$@" && pwd
}

alias ginit='git submodule update --init --recursive'
alias la='ls -la'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
