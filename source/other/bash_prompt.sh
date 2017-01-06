# Configure bash prompt

# Colors
Black='\[\e[0;30m\]'
Red='\[\e[0;31m\]'
Green='\[\e[0;32m\]'
Yellow='\[\e[0;33m\]'
Blue='\[\e[0;34m\]'
Purple='\[\e[0;35m\]'
Cyan='\[\e[0;36m\]'
White='\[\e[0;37m\]'
None='\[\e[0m\]'

_Black='\e[0;30m'
_Red='\e[0;31m'
_Green='\e[0;32m'
_Yellow='\e[0;33m'
_Blue='\e[0;34m'
_Purple='\e[0;35m'
_Cyan='\e[0;36m'
_White='\e[0;37m'
_None='\e[0m'

# Run git-prompt.sh script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
GIT_PS1_SHOWDIRTYSTATE=1
source $DIR/git-prompt.sh

# Prompt components
ps1_exit_code() {
    [[ 0 == "$1" || 130 == "$1" ]] || printf -- "[${_Red}Error code: $1${_None}]\n${_None}"
}
ps1_git='$(if command -v __git_ps1 &>/dev/null ; then __git_ps1 "[${_Cyan}%s${_None}]\n\n"; fi)'
ps1_time="[${Yellow}$(date +%k:%M)${None}]"
ps1_dir="[${Green}\w${None}]"
ps1_trail="\n${Green}\$${None} "

# Export prompt
export PS1='$(ps1_exit_code $?)'"${ps1_git}${ps1_time}${ps1_dir}${ps1_trail}"
