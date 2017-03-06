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

if [[ $(type gitk >/dev/null 2>/dev/null) -eq 0 ]]; then
    alias gitk="git log --oneline --graph --decorate"
fi

# enable tab completion in git aliases
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
