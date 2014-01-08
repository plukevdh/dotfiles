function ruby_or_irb() {
  if [[ "$1" == "" ]]; then
    irb
  else
    ruby "$@"
  fi
}

function kill_all_jobs() {
  jobs -p |
  sed 's/^\[[0-9]*\][ |+|-]*\([0-9]*\).*$/\1/' |
  xargs -n1 kill $1
}

# alias ruby=ruby_or_irb
alias r=rails
alias p=passenger
function git(){hub "$@"}
alias :e=vim
alias :q=exit

# GIT ALIASES
alias glog='git log --graph --pretty=format:"%h %aN %Cred%d %Cblue%s"'
alias gsp='git stash ; git pull --rebase ; git stash pop'
alias gpp='git pull ; git push'
alias gdt='git difftool'

alias slrn="slrn -n"
alias man='LC_ALL=C LANG=C man'
alias f=finger
alias ll='ls -al'
alias ls='ls -G '
alias offlineimap-tty='offlineimap -u TTY.TTYUI'
alias hnb-partecs='hnb $HOME/partecs/partecs-hnb.xml'
alias rest2html-css='rst2html --embed-stylesheet --stylesheet-path=/usr/share/python-docutils/s5_html/themes/default/print.css'

autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# hub tab-completion script for zsh.
# This script complements the completion script that ships with git.
#
# vim: ft=zsh sw=2 ts=2 et

# Autoload _git completion functions
if declare -f _git > /dev/null; then
  _git
fi

if declare -f _git_commands > /dev/null; then
  _hub_commands=(
    'alias:show shell instructions for wrapping git'
    'pull-request:open a pull request on GitHub'
    'fork:fork origin repo on GitHub'
    'create:create new repo on GitHub for the current project'
    'browse:browse the project on GitHub'
    'compare:open GitHub compare view'
  )
  # Extend the '_git_commands' function with hub commands
  eval "$(declare -f _git_commands | sed -e 's/base_commands=(/base_commands=(${_hub_commands} /')"
fi
