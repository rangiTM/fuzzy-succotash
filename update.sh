#!/bin/bash

source ~/.keychain/$COMPUTER_NAME.local-sh

pushd $HOME/repos/osx > /dev/null

git pull
brew update && brew upgrade
cp -r "dotfiles/". "$HOME/"

popd > /dev/null
