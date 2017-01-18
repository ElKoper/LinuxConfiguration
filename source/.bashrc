# Needed for vim schemes
export TERM=xterm-256color

# Use colored commands
alias diff="colordiff"
alias grep="grep --color"
alias ls="ls --color=auto"

# cd aliases
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# ls aliases
alias l.='ls -d .*'
alias ll='ls -l'
alias lla='ls -la'

# ps aliases
alias psw='ps auxf | grep `whoami`'

# grep aliases
alias grin="grep -rin"
alias ghist="history | grep"
alias gfind="find | grep"

# make aliases
alias mkae="make"
alias m48="make -j48"
alias mcm="make clean; make"
alias mcm48="make clean; make -j48"

# git aliases
alias gitc="git checkout"
alias gitb="git branch"
alias gitr="git rebase"
alias gitri="git rebase -i"
alias gitd="git diff"
alias gitds="git diff --stat"
alias gits="git status"

alias gti="git"
alias gtic="gitc"
alias gtib="gitb"
alias gtir="gitr"
alias gtiri="gitri"
alias gtid="gitd"
alias gtids="gitds"
alias gtis="gits"

alias gitcm="git checkout master"
alias gitrm="git rebase master"
alias gitdm="git diff master"
alias gitdsm="git diff --stat master"

alias gticm="gitcm"
alias gtirm="gitrm"
alias gtidm="gitdm"
alias gtidsm="gitdsm"

# Enable tab completion in git aliases
if [ -f ~/other/git-completion.bash ]; then
    source ~/other/git-completion.bash

    __git_complete gitc _git_checkout
    __git_complete gitb _git_branch
    __git_complete gitr _git_rebase
    __git_complete gitri _git_rebase
    __git_complete gitd _git_diff
    __git_complete gitds _git_diff

    __git_complete gtic _git_checkout
    __git_complete gtib _git_branch
    __git_complete gtir _git_rebase
    __git_complete gtiri _git_rebase
    __git_complete gtid _git_diff
    __git_complete gtids _git_diff
fi

# Set git editor to vim
# git config --global core.editor "vim"
export GIT_EDITOR=vim

# Remove trailing whitespaces
trailcut(){
  while [ "$1" != "" ]; do
    sed -i 's/[ \t]*$//' "$1" && shift;
  done;
}

# Change prompt
[ -f ~/other/bash_prompt.sh ] && source ~/other/bash_prompt.sh

# Load work only .bashrc
[ -f ~/.bashrc_work ] && source ~/.bashrc_work
