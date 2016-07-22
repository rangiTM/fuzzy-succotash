#!/bin/bash
git pull
brew update && brew upgrade
cp -r "dotfiles/". "$HOME/"