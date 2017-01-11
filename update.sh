#!/bin/bash

source ~/.keychain/$COMPUTER_NAME.local-sh

pushd $CWD > /dev/null

git pull
brew update && brew upgrade
cp -r "dotfiles/". "$HOME/"

popd > /dev/null
