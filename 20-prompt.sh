set -o vi
export EDITOR=nvim
PROMPT_COMMAND=mypromptcommand
PROMPT_DIRTRIM=2
source ~/.config/bashrc.d/git-prompt.sh
VIRTUAL_ENV_DISABLE_PROMPT=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCONFLICTSTATE="yes"
#GIT_PS1_SHOWCOLORHINTS="yes"
GIT_PS1_SHOWDIRTYSTATE="yes"
PS1='┌─\[\e[30m\]\[\e[41m\]\[\e[1m\] $? \[\e[0m\]\[\e[30m\]\[\e[44m\]\[\e[1m\]$(vir_env)\[\e[0m\]\[\e[1m\]\[\e[42m\]\[\[\e[30m\] \w \[\e[0m\]\[\e[30m\]\[\e[43m\]\[\e[1m\]$(__git_ps1 " %s ")\[\e[0m\]\n└─\[\e[32m\] \[\e[0m\] '
#\[\e[32m\][%s]\[\e[0m\]

function vir_env {
    if [[ -v VIRTUAL_ENV_PROMPT ]];then
        echo "  ${VIRTUAL_ENV_PROMPT} "
    fi
}

function exit_status {
    if [[ $? == 0 ]]; then
        echo " 󰔓  "
    else
        echo " 󰔑  "
    fi
}

function mypromptcommand {
    if [[ -d ./.venv ]];then
        source ./.venv/bin/activate
    fi
    # https://blog.dhampir.no/content/avoiding-invalid-commands-in-bash-history
    local exit_status=$?
    local number=$(history 1 | awk '{print $1}')
    if [ -n "$number" ]; then
        if [ $exit_status -eq 127 ] && ([ -z $HISTLASTENTRY ] || [ $HISTLASTENTRY -lt  "$number" ]); then
            history -d "$number"
        else
            HISTLASTENTRY=$number
        fi
    fi
    history -a
}
