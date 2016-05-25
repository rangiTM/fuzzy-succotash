# autocd
shopt -s autocd

# mark foo > jump foo
    export MARKPATH=$HOME/.marks
    function jump {
        cd -P $MARKPATH/$1 2> /dev/null || echo "No such mark: $1"
    }
    function mark {
        mkdir -p $MARKPATH; ln -s "$(pwd)" $MARKPATH/$1
    }
    function unmark {
        rm -i $MARKPATH/$1
    }
    function marks {
        \ls -l $MARKPATH | tail -n +2 | sed 's/  / /g' | cut -d' ' -f9- | awk -F ' -> ' '{printf "%-10s -> %s\n", $1, $2}'
    }

# nvm
# export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh
