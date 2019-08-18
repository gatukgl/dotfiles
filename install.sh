#!/bin/sh

# Homebrew install for OSX
echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Programming Language
brew install node

# Homebrew-Cask for application management
echo "Installing brew cask..."
brew tap caskroom/cask

# Dev tools
brew install git
brew cask install postman
brew cask install docker
berw cask install kitty

# Editors
brew cask install sublime-text
brew cask install visual-studio-code

# Messenger
brew cask install slack

# Browser
brew cask install google-chrome
brew cask install firefox
