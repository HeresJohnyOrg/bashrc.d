[ -f "/home/user/.ghcup/env" ] && source "/home/user/.ghcup/env" # ghcup-env

#LESS
export LESS='--chop-long-lines --HILITE-UNREAD --ignore-case --incsearch --jump-target=4 --LONG-PROMPT --no-init --quit-if-one-screen --use-color --window=-4'
export FZF_DEFAULT_OPTS='--height 40% --border --margin=1 --padding=1'

# History #
export HISTSIZE=999
export HISTIGNORE="source .bashrc:sudo dnf update:pwd:w:tmux:history:pass:pass *:tree:cd:cd .:cd ..:ls:ls -ltr:ls -l:ls -lt:git status:sudo shutdown -h now:systemctl reboot"
