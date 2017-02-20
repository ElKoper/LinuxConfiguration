# Colors with \[ ... \] enclosure (bash ignore them when computing the length of the prompt)
Black='\[\e[0;30m\]'
Red='\[\e[0;31m\]'
Green='\[\e[0;32m\]'
Yellow='\[\e[0;33m\]'
Blue='\[\e[0;34m\]'
Purple='\[\e[0;35m\]'
Cyan='\[\e[0;36m\]'
LGray='\[\e[0;37m\]'
DGray='\[\e[0;90m\]'
White='\[\e[0;97m\]'
None='\[\e[0m\]'

# Colors
_Black='\e[0;30m'
_Red='\e[0;31m'
_Green='\e[0;32m'
_Yellow='\e[0;33m'
_Blue='\e[0;34m'
_Purple='\e[0;35m'
_Cyan='\e[0;36m'
_LGray='\e[0;37m'
_DGray='\e[0;90m'
_White='\e[0;97m'
_None='\e[0m'

# Run git-prompt.sh script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
GIT_PS1_SHOWDIRTYSTATE=1
source $DIR/git-prompt.sh

# Prompt command
__prompt_command() {
    local exit_code="$?"
    PS1="\n"

    # user, host
    PS1+="${Blue}\u@\h${None}\n"
    # git prompt
    PS1+='$(if command -v __git_ps1 &>/dev/null ; then __git_ps1 "${_Cyan}%s${_None}\n${_None}"; fi)'
    # time
    PS1+="${Yellow}$(date +%k:%M)${None} "
    # current directory
    PS1+="${Green}\w${None} "
    # error code
    [[ 0 == "$exit_code" ]] && PS1+="${DGray}" || PS1+="${Red}" ; PS1+="$exit_code${None}"
    # trail
    PS1+="\n${Green}\$${None} "
}

# Export prompt command
export PROMPT_COMMAND=__prompt_command
