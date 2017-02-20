# Exports ---------------------------------------------------------------------
export VISUAL=vim           # Set vim as default editor
export TERM=xterm-256color  # Needed for vim schemes


# Aliases ---------------------------------------------------------------------
# use coloured commands
alias diff="colordiff"
alias grep="grep --color"
alias ls="ls --color=auto"

# vi -> vim
alias vi='vim'

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cd..='cd ..'

# ls
alias l.='ls -d .*'
alias ll='ls -l'
alias lla='ls -la'

# ps
alias psw='ps auxf | grep `whoami`'

# grep
alias grin="grep -rin"
alias ghist="history | grep"
alias gfind="find | grep"


# Functions -------------------------------------------------------------------
# trailcut - remove trailing whitespaces
trailcut(){
  while [ "$1" != "" ]; do
    sed -i 's/[ \t]*$//' "$1"; shift;
  done;
}


# Source another bashrc parts -------------------------------------------------
[ -f ~/other/bashrc_prompt.sh ] && source ~/other/bashrc_prompt.sh
[ -f ~/other/bashrc_git.sh ] && source ~/other/bashrc_git.sh

[ -f ~/.bashrc_private ] && source ~/.bashrc_private
