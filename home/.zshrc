export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="sunaku"

plugins=(bundler git passenger)
source $ZSH/oh-my-zsh.sh

source $HOME/.githelpers
source $HOME/.generic_helpers

# Set/unset  shell options
unsetopt correct correctall auto_name_dirs
setopt histnostore histignoredups auto_cd

bindkey -e

COMPLETION_WAITING_DOTS=true
JRUBY_INVOCATION="$(readlink "$(which celerity_jruby)")"
export JRUBY_OPTS=--2.0
export RBXOPT=-X19
PATH="$HOME/.rbenv/bin:$HOME/bin:/usr/local/bin:/usr/local/sbin/:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/share/npm/bin:$PATH"
TZ="America/New_York"
HISTFILE=$HOME/.zhistory
HISTSIZE=1000
SAVEHIST=1000
HOSTNAME="`hostname`"
PAGER='less'

alias edit="subl"
export EDITOR="subl -w"

# alias edit=vim
# export EDITOR=edit

# git go: https://github.com/pengwynn/dotfiles/blob/master/bin/git-go
GH_LOGIN=plukevdh

#LANGUAGE=
LC_ALL='en_US.UTF-8'
LANG='en_US.UTF-8'
LC_CTYPE='en_US.UTF-8'

fpath=(/usr/local/share/zsh-completions $fpath)
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
__rvm_project_rvmrc
