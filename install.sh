#!/bin/sh

# Homebrew install for OSX
echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Programming Language
brew install node

# Homebrew-Cask for application management
echo "Installing brew cask..."
brew tap homebrew/cask-cask
brew tab caskroom/fonts

# Font with icons
brew cask install font-hack-nerd-font

# Dev tools
brew install git
brew cask install postman
brew cask install docker
brew cask install kitty
brew cask install insomnia


# Editors
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install typora

# Messenger
brew cask install slack

# Browser
brew cask install google-chrome
brew cask install firefox

# Customization terminal
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
