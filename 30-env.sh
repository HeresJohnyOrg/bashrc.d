export HISTSIZE=1999
export HISTCONTROL=ignorespace
export HISTIGNORE="tmux *:deactivate:cg:so:source ~/.bashrc:ls:ls *:sudo shutdown- h now:cd:cd ..:cd .:sudo dnf update:history"
export LESS="--ignore-case --incsearch --quit-if-one-screen --RAW-CONTROL-CHARS"
export GPG_TTY="${tty}"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
