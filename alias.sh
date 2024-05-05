alias g=git
alias pm="python manage.py"
alias asdf="setxkbmap se dvorak_a5 -option caps:swapescape"
alias jl="source ~/venvs/jupyter_lab/bin/activate"
alias cg="cd ~/Documents/git"
alias t="tmux new-session"

function tt() { tmux new-session -A -s "${1}"; }
function ttt() { tmux new-session -A -s "${1}" -n "${2}"; }
