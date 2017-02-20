# Exports ---------------------------------------------------------------------
export VISUAL=vim           # Set vim as default editor
export TERM=xterm-256color  # Needed for vim schemes


# Aliases ---------------------------------------------------------------------
# use coloured commands
alias diff="colordiff"
alias grep="grep --color"
alias ls="ls --color=auto"

# miscellaneous
alias psw='ps auxf | grep `whoami`'
alias vi='vim'

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cd..='cd ..'

# grep
alias grin="grep -rin"
alias ghist="history | grep"
alias gfind="find | grep"

#ls
alias la='ls -a'
alias ll='ls -lah'


# Functions -------------------------------------------------------------------
# trailcut - remove trailing whitespaces
trailcut(){
  while [ "$1" != "" ]; do
    sed -i 's/[ \t]*$//' "$1"; shift;
  done;
}


# Source another bashrc parts -------------------------------------------------
[ -f ~/.bashrc_private ] && source ~/.bashrc_private

[ -f ~/other/bashrc_prompt.sh ] && source ~/other/bashrc_prompt.sh
[ -f ~/other/bashrc_git.sh ] && source ~/other/bashrc_git.sh

