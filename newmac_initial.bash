#!/bin/bash  -x


# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
sudo -v 
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Pin the version of git that doesn't clobber autocomplete
# 10/3/19 - Temporarily don't install git from brew because it's slow as shit at work when using vcs plugin of powerlevel9k...
# brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/db579a4f633c3dfde12c5236b9ea0695dce6cc5e/Formula/git.rb --without-completions
# brew pin git


# Set brew to not update on every call during this script
HOMEBREW_NO_AUTO_UPDATE=1


brew cask install iterm2 
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font


brew install zsh zsh-completions


# oh-my-zsh is going to do this 
# chsh -s $(which zsh)


sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" --batch


# git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

brew cask install macvim




brew install pyenv
brew install pyenv-virtualenv

# This allows pyenv to guess a version when e.g. #!/usr/bin/env python3.7 is in a shebang and multiple 3.7 versions are installed
git clone git://github.com/concordusapps/pyenv-implict.git ~/.pyenv/plugins/pyenv-implict
# brew install zlib
# pyenv install 3.8.2
# pyenv global 3.8.2


brew cask install scroll-reverser
brew install the_silver_searcher
brew cask install diffmerge


# brew install jenv
# brew cask install java
# brew tap caskroom/versions
# brew cask install java8
######
# jenv add /Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home
# jenv add /Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home
######
# jenv global 1.8
# jenv enable-plugin scala
# jenv enable-plugin export
# jenv rehash

# utils
brew install watch
brew install fswatch
brew install telnet
brew install jq
brew install sshrc

# brew install scala 
# brew install sbt

# brew install autossh
# brew install mysql-client

brew cask install pycharm
# brew cask install intellij-idea

# brew cask install hipchat
brew cask install docker
brew cask install macdown
brew cask install postman

# Minikube stuff
brew cask install virtualbox
brew cask install minikube
brew install kubectl

# i2cssh
# gem install i2cssh --user-install

