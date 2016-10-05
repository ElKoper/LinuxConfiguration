# Needed for vim schemes 
export TERM=xterm-256color

# Use colored grep always
alias grep="grep --color"

# Some git aliases 
alias gitc="git checkout"
alias gitb="git branch"
alias gitr="git rebase"
alias gitri="git rebase -i"
alias gitd="git diff"
alias gitds="git diff --stat"
alias gits="git status"

# Enable tab completion in git aliases
[ -f ~/other/git-completion.bash ] && source ~/other/git-completion.bash
__git_complete gitc _git_checkout
__git_complete gitb _git_branch
__git_complete gitr _git_rebase
__git_complete gitri _git_rebase
__git_complete gitd _git_diff
__git_complete gitds _git_diff

# Remove trailing whitespaces
trailcut(){
  sed -i 's/[ \t]*$//' "$1"
}

# Change prompt
[ -f ~/other/bash_prompt.sh ] && source ~/other/bash_prompt.sh

# Load work only bashrc
[ -f ~/.bashrc_intel ] && source ~/.bashrc_intel
