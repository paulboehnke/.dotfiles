!#/bin/zsh

# Steps to run before running this script:
# 1. Install Oh-My-ZSH 
# $ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# 2. Clone this dotfiles repository recursivly
# git clone --recurse-submodules -j8 git@github.com:paulboehnke/.dotfiles.git
# 3.Install brew if not already install by other user
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add brew to path
Set PATH, MANPATH, etc., for Homebrew. >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)" >> ~/.zprofile

# Install packages with brew
brew install bat
brew install tree
brew install fasd
brew install fzf
# ..

# Setup links
rm ~/.zshrc
rm ~/.vimrc
ln -s .dotfiles/.zshrc
ln -s .dotfiles/.vimrc
ln -s .dotfiles/.p10k.zsh

# install pyenv if not already installed by another user on this machine

# install pyenv-virtualenv if not already installed by another user on this machine


