#!/bin/bash

# setup

sudo -v
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && brew update

# brew

KEGS="
ag
bash
"

for keg in $KEGS
do
	brew install $keg
done

CASKS="
Caskroom/cask/dropbox
Caskroom/cask/firefox
Caskroom/versions/sublime-text3
Caskroom/cask/vlc    
"

for cask in $CASKS
do
	brew install $cask
done

#  copy things around

cp -r "dotfiles/". "$HOME/DOTFILES"
cp -r "app-settings/Application Support/Sublime Text 3/". "$HOME/Library/Application Support/Sublime Text 3"

# fonts from dropbox

# ln -s $HOME/Dropbox/Fonts $HOME/Library/Fonts