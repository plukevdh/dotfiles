export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="sunaku"

plugins=(rails3 bundler git passenger)
source $ZSH/oh-my-zsh.sh

# Set/unset  shell options
unsetopt correct correctall
setopt histnostore histignoredups auto_cd

bindkey -e

COMPLETION_WAITING_DOTS=true
JRUBY_INVOCATION="$(readlink "$(which celerity_jruby)")"
JRUBY_OPTS="--1.9"
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

FLEX_HOME='~/Code/Flex/flex_sdk_3.4.1'

# zstyle ':completion:*' auto-description 'specify: %d'
# zstyle ':completion:*' completer _expand _complete _correct _approximate
# zstyle ':completion:*' format 'Completing %d'
# zstyle ':completion:*' group-name ''
# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# zstyle ':completion:*' list-colors ''
# zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
# zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
# zstyle ':completion:*' menu select=long
# zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
# zstyle ':completion:*' use-compctl false
# zstyle ':completion:*' verbose true

# zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
# zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

fpath=(/usr/local/share/zsh-completions $fpath)
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"
eval "$(hub alias -s)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
