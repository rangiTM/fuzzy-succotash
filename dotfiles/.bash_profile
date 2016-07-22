# Load .bashrc
[[ -s ~/.bashrc ]] && source ~/.bashrc

# bash-completion
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

# aliases
alias grep="ag"

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
