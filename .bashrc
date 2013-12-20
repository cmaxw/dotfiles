# .bashrc
# linux uses .bashrc for non-login shell

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# env variables                                                                                                                                                                                                                              
export CLICOLOR=1  # osx color files/folders                                                                        
export ACKRC=".ackrc"  # ack configuration

# source ~/.git-completion.bash

alias tpa='tmux attach -t'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

. ~/.rvm/contrib/ps1_functions

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '

ps1_set $

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
