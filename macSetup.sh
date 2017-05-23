#!/bin/bash

#install xcode
xcode-select --install

#install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

#install git
brew install git -y

#install various utilities
brew install htop -y
brew install netcat -y
brew install nmap -y
brew install vim -y
brew install python -y
brew install python3 -y
brew install thefuck -y

#install cheat utility
sudo pip install cheat

#install atom text editor
wget https://atom.io/download/mac
unzip atom-mac.zip

#install sublime editor
wget https://download.sublimetext.com/Sublime%20Text%20Build%203126.dmg
hdiutil attach ./Sublime\ Text\ Build\ 3126.dmg
mv /Volumes/Sublime\ Text/Sublime\ Text.app/ /Applications/

#install Brackets editor
wget https://github.com/adobe/brackets/releases/download/release-1.9/Brackets.Release.1.9.dmg
hdiutil attach ./Brackets.Release.1.9.dmg
mv /Volumes/Brackets\ Release\ 1.9/Brackets.app/ /Applications/

#install the butler
wget https://cachefly.alfredapp.com/Alfred_3.3.2_818.dmg
hdiutil ./Alfred_3.3.2_818.dmg
mv /Volumes/Alfred/Alfred\ 3.app/ /Applications/

#install iTerm
wget https://iterm2.com/downloads/stable/iTerm2-3_0_15.zip
unzip iTerm2-3_0_15.zip

#install ZSH shell
brew install zsh zsh-completions

#install oh my zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
