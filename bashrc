export TERM=xterm-color
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '

# My own aliases

if [[ `uname -a` =~ "Linux" ]]; then
    alias ls="ls --color=auto"
	alias egrep="egrep --color=auto"
fi

alias ssh="ssh -X"
alias git-pretty-log="git log --graph --oneline --decorate --all"

# This will colorify cscope's output
export CSCOPE_EDITOR=`which vim`

