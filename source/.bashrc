# Needed for vim schemes 
export TERM=xterm-256color

# Use colored grep and diff always
alias diff="colordiff"
alias grep="grep --color"
alias grin="grep -rin"

alias ghist="history | grep"
alias gfind="find | grep"

# Some git aliases 
alias gitc="git checkout"
alias gitb="git branch"
alias gitr="git rebase"
alias gitri="git rebase -i"
alias gitd="git diff"
alias gitds="git diff --stat"
alias gits="git status"

alias gti="git"
alias gtic="git checkout"
alias gtib="git branch"
alias gtir="git rebase"
alias gtiri="git rebase -i"
alias gtid="git diff"
alias gtids="git diff --stat"
alias gtis="git status"

# Enable tab completion in git aliases
[ -f ~/other/git-completion.bash ] && source ~/other/git-completion.bash
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

# Remove trailing whitespaces
trailcut(){
  sed -i 's/[ \t]*$//' "$1"
}

# Change prompt
[ -f ~/other/bash_prompt.sh ] && source ~/other/bash_prompt.sh

# Load work only bashrc
[ -f ~/.bashrc_work ] && source ~/.bashrc_work
