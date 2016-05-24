# Load .bashrc
[[ -s ~/.bashrc ]] && source ~/.bashrc

# $ prompt
export PS1="\[\e]2;\u@\H \w\a\e[32;1m\]$\[\e[0m\] "

# bash-completion
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

# aliases
alias grep="ag"
alias st2="open -a 'Sublime Text 2'"
alias st="open -a 'Sublime Text'"
alias p="pngquant"

# prepend brew to PATH
# export PATH=/usr/local/bin:$PATH

# prepend postgresql to PATH
# export PATH=/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH
# export PGDATA=/usr/local/var/postgres

# append to PATH
# export PATH=$PATH:/usr/local/share/npm/bin
# export PATH=$PATH:"/Users/Rangi/repos/Auxiliary\ Tools/PackageMaker.app/Contents/MacOS" 

# load NVM
# [[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh

# Load rbenv
eval "$(rbenv init -)"
