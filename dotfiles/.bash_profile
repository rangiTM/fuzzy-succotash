SSH_ENV="$HOME/.ssh/environment"

function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

# Load .bashrc
[[ -s ~/.bashrc ]] && source ~/.bashrc

# bash-completion
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

# aliases
alias grep="ag"
alias plz="sudo"

# $ prompt
export PS1="\[\e]2;\u@\H \w\a\e[32;1m\]$\[\e[0m\] "

# nano for default editor
export EDITOR="nano"

# brew cask options
export HOMEBREW_CASK_OPTS="--appdir=/Applications" 

# load NVM
# [[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh

# Load rbenv
# eval "$(rbenv init -)"
