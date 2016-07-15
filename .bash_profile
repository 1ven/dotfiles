source /usr/local/etc/bash_completion.d/git-prompt.sh
set -o vi
export PS1='\W$(__git_ps1):\\$ '

alias tmux="tmux -2"
alias x="exit"
alias cl="clear"
alias pg="postgres -D /usr/local/var/postgres"

alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias gr="git reset HEAD~"

function gc() {
  git commit -m "$1"
}

function ga() {
  git add $1
}

function tmux-dev() {
  tmux new-session -s $(basename $PWD) 'vim' \; splitw -v -p 20 \; splitw -h
}
