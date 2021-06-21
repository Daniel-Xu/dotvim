#!/bin/bash


# install packages
brew install tmux \
reattach-to-user-namespace \
tig \
ag \
asdf \
ansifilter \




# dev tools

## deps
brew install gnupg

## pet snippet
brew install knqyf263/pet/pet
ln -s ~/.vim/config.toml  ~/.config/pet/config.toml
ln -s ~/.vim/snippet.toml  ~/.config/pet/snippet.toml

## asdf plugins
asdf plugin add erlang
asdf install erlang latest

asdf plugin add elixir
asdf install elixir latest

asdf plugin add python
asdf install python latest

asdf plugin add nodejs
asdf install nodejs latest

asdf plugin add golang
asdf install golang latest

## font

brew tap homebrew/cask-fonts
brew install --cask font-fira-code


# application
brew install --cask docker

brew install --cask visual-studio-code


echo "done"
