# http://mah.everybody.org/docs/ssh

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

# load keychain
keychain -q ~/.ssh/id_rsa

# aliases
eval $(thefuck --alias)
alias plz="sudo"
alias l="ls -aeGhlO@"
alias ls="ls -aG"

# http://www.ibm.com/developerworks/library/l-tip-prompt/
export PS1="\[\e]2;\u@\H \w\a\e[32m\]\$ \[\e[0m\]"

# ST3 for default editor
export EDITOR="subl"

# brew cask options
export HOMEBREW_CASK_OPTS="--appdir=/Applications" 

# load NVM
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

# Load rbenv
eval "$(rbenv init -)"