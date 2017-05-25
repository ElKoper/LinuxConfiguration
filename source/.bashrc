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
if [ -f ~/.bashrc_private ];                then source ~/.bashrc_private;                fi
if [ -f ~/.bashrc_other/bashrc_prompt.sh ]; then source ~/.bashrc_other/bashrc_prompt.sh; fi
if [ -f ~/.bashrc_other/bashrc_git.sh ];    then source ~/.bashrc_other/bashrc_git.sh;    fi

