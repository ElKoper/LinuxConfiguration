# Bold: 1 - true, 0 - false
Bold=0

# Colors with \[ ... \] enclosure (bash ignore them when computing the length of the prompt)
Black='\[\e[${Bold};30m\]'
Red='\[\e[${Bold};31m\]'
Green='\[\e[${Bold};32m\]'
Yellow='\[\e[${Bold};33m\]'
Blue='\[\e[${Bold};34m\]'
Purple='\[\e[${Bold};35m\]'
Cyan='\[\e[${Bold};36m\]'
LGray='\[\e[${Bold};37m\]'
DGray='\[\e[${Bold};90m\]'
White='\[\e[${Bold};97m\]'
None='\[\e[0m\]'

# Colors
_Black="\e[${Bold};30m"
_Red="\e[${Bold};31m"
_Green="\e[${Bold};32m"
_Yellow="\e[${Bold};33m"
_Blue="\e[${Bold};34m"
_Purple="\e[${Bold};35m"
_Cyan="\e[${Bold};36m"
_LGray="\e[${Bold};37m"
_DGray="\e[${Bold};90m"
_White="\e[${Bold};97m"
_None='\e[0m'

# Run git-prompt.sh script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
GIT_PS1_SHOWDIRTYSTATE=1
source $DIR/git-prompt.sh

# Prompt command
__prompt_command() {
    local exit_code="$?"
    PS1=""

    # newline
    PS1+="\n"
    # user, host
    PS1+="${LGray}[\u@\h]${None}"
    # jobs
    [[ $(jobs | wc -c) -eq 0 ]] || PS1+="${Red}[stopped: \j]${None}"
    # error code
    [[ "$exit_code" == 0 ]] || PS1+="${Red}[error: ${exit_code}]${None}"

    # newline
    PS1+="\n"
    # time
    PS1+="${Yellow}[$(date +%k:%M)]${None}"
    # git prompt
    PS1+='$(if command -v __git_ps1 &>/dev/null ; then __git_ps1 "${_Green}[%s]${_None}"; fi)'
    # current directory
    PS1+="${Cyan}[\w]${None}"

    # newline
    PS1+="\n"
    # trail
    [[ $(id -u) -eq 0 ]] && PS1+="${Red}" || PS1+="${Green}"
    PS1+="\$ ${None}"
}

# Export prompt command
export PROMPT_COMMAND=__prompt_command
