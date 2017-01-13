#!/bin/bash

sudo -v

# setup

#install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew

# symlink casks to /Applications not ~/Applications
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

KEGS="
ag
bash
keychain
nvm
rbenv
thefuck
youtube-dl
zsh
"
#'ffmpeg --with-fdk-aac'

for keg in $KEGS
do
	brew install $keg
done

CASKS="
Caskroom/cask/dropbox
Caskroom/cask/firefox
Caskroom/cask/sublime-text 
"
# Caskroom/cask/blender
# Caskroom/cask/vlc

for cask in $CASKS
do
	brew install $cask
done

# change shell
echo /usr/local/bin/bash | sudo tee -a /etc/shells
chsh -s /usr/local/bin/bash

#  copy things around

cp -r "dotfiles/". "$HOME/"

# fonts from dropbox

cp "files/Inconsolata-dz.otf" "$HOME/Library/Fonts"
# ln -s $HOME/Dropbox/Fonts $HOME/Library/Fonts